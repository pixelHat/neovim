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

" Find file
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

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


call plug#end()
