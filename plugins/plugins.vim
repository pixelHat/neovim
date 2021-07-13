call plug#begin('~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'


Plug 'tomtom/tcomment_vim'

Plug 'easymotion/vim-easymotion'

Plug 'vim-test/vim-test'
Plug 'tpope/vim-dispatch'

" theme
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'savq/melange'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'projekt0n/github-nvim-theme'


Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Status bar
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'

Plug 'digitaltoad/vim-pug'

Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'norcalli/snippets.nvim'
Plug 'glepnir/lspsaga.nvim'

Plug 'hrsh7th/nvim-compe'

Plug 'sbdchd/neoformat'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
