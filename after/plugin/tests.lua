-- inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
--
--

vim.g["test#strategy"] = "dispatch"
vim.api.nvim_set_keymap("n", "t<C-n>", ":TestNearest<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "t<C-f>", ":TestFile<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "t<C-s>", ":TestSuite<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "t<C-l>", ":TestLast<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "t<C-g>", ":TestVisit<CR>", {noremap = true, silent = true})
