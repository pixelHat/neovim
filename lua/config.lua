vim.api.nvim_set_keymap('n', ';', ':', {noremap = true})
vim.api.nvim_set_keymap('n', ':', ';', {noremap = true})
vim.api.nvim_set_keymap('n', '<SPACE>', '<Nop>', {noremap = true})
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.python3_host_prog='/usr/bin/python'

vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})

-- inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
--
--

vim.g['test#strategy'] = "dispatch"
vim.api.nvim_set_keymap('n', 't<C-n>', ':TestNearest<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 't<C-f>', ':TestFile<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 't<C-s>', ':TestSuite<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 't<C-l>', ':TestLast<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 't<C-g>', ':TestVisit<CR>', {noremap = true, silent = true})

vim.cmd('colorscheme melange')

local statusline = require('statusline')
statusline.tabline = false
