function findComponent(name, type)
  local types = {
    ["ts"] = ".component.ts",
    ["html"] = ".component.html",
    ["test"] = ".component.spec.ts",
    ["css"] = ".component.css",
  }
  local file = name .. types[type]
  return file
end

function change(type)
  return function()
    local current_dir = vim.fn.expand('%:p:h')
    local file = current_dir .. "/" .. findComponent("app", type)
    vim.api.nvim_command("edit " .. file)
  end
end

vim.keymap.set('n', '<Leader>a', change("ts"))
vim.keymap.set('n', '<Leader>d', change("html"))
vim.keymap.set('n', '<Leader>f', change("css"))
