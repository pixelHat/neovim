vim.opt.termguicolors = true
vim.wo.wrap = false
vim.opt.cmdheight = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.bo.swapfile = false
vim.opt.scrolloff = 999
vim.opt.inccommand = 'split'
vim.opt.updatetime = 300

function highlight() 
  vim.highlight.on_yank {higroup='IncSearch', timeout=150}
end

-- au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = highlight
})

-- it is not working
vim.cmd([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  augroup END
  ]])

vim.keymap.set("n", "k", "v:count == 0 ? \"gk\" : \"k\"", { expr = true, silent = true })
