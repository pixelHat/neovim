lua << EOF
function split(s)
    local chunks = {}
    for substring in s:gmatch('([^/]+)') do
       table.insert(chunks, substring)
    end
    return chunks
end

function gettarget()
  local splited = split(vim.fn.getcwd())
  return splited[#splited]
end


local dap = require('dap')


dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode',
  name = "lldb"
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.getcwd() .. '/target/debug/' .. gettarget()
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
EOF

nnoremap <Leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <Leader>n :lua require'dap'.continue()<CR>
nnoremap <Leader>s :lua require'dap.ui.widgets'.hover()<CR>
