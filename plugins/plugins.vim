call plug#begin('~/.vim/plugged')

Plug 'tomtom/tcomment_vim'

Plug 'easymotion/vim-easymotion'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-dispatch'
Plug 'dense-analysis/ale'

Plug 'vim-test/vim-test'

Plug 'gabrielelana/vim-markdown'

" theme
Plug 'arcticicestudio/nord-vim'

" File Explorer
Plug 'scrooloose/NERDTree'

" Status bar
Plug 'vim-airline/vim-airline'

" File explore
Plug 'scrooloose/nerdtree'

" Find file
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


Plug 'airblade/vim-gitgutter'

call plug#end()

