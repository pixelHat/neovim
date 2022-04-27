local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

Plug('nvim-treesitter/nvim-treesitter')
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

Plug 'numToStr/Comment.nvim'

Plug 'easymotion/vim-easymotion'

Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

-- " theme
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'savq/melange'
-- Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'projekt0n/github-nvim-theme'


Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'digitaltoad/vim-pug'

Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
-- Plug ('tami5/lspsaga.nvim', { 'branch'= 'nvim51' })
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
-- " Plug 'hrsh7th/cmp-vsnip'
-- " Plug 'hrsh7th/vim-vsnip'
-- " Plug 'rafamadriz/friendly-snippets'


Plug 'sbdchd/neoformat'

-- " Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tpope/vim-surround'
Plug 'AndrewRadev/tagalong.vim'
Plug 'mattn/emmet-vim'

Plug 'beauwilliams/statusline.lua'
Plug 'mfussenegger/nvim-dap'

vim.call('plug#end')


