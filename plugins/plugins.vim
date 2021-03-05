call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" Tailwind
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

call plug#end()


