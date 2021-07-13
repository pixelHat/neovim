set termguicolors
set guifont                             " Font configuration from terminal
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set number relativenumber               " Number and relative numbers
set background=dark                     " tell vim what the background color looks like
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
" set mouse=                              " Disable mouse support
set noswapfile                          " Remove swap files
set scrolloff=20
set inccommand=split                    " Shows replacement

" colorscheme melange

au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}

" Show relative numbers when is in focus otherwise it shows absolute numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

