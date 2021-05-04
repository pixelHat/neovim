call plug#begin('~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'tomtom/tcomment_vim'

Plug 'easymotion/vim-easymotion'

" vim python motion
Plug 'jeetsukumaran/vim-pythonsense'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-dispatch'
Plug 'dense-analysis/ale'

Plug 'vim-test/vim-test'

" theme
Plug 'arcticicestudio/nord-vim'

" File Explorer
Plug 'scrooloose/NERDTree'

" Find file
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'

" Status bar
Plug 'vim-airline/vim-airline'

Plug 'digitaltoad/vim-pug'

call plug#end()
