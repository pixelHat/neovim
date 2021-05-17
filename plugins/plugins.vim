call plug#begin('~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'tomtom/tcomment_vim'

Plug 'easymotion/vim-easymotion'

" vim python motion
Plug 'jeetsukumaran/vim-pythonsense'

Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

" theme
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Status bar
Plug 'vim-airline/vim-airline'

Plug 'digitaltoad/vim-pug'

Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'norcalli/snippets.nvim'
Plug 'glepnir/lspsaga.nvim'

Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'

Plug 'sbdchd/neoformat'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
