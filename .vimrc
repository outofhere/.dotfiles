" In order to get colors work
if &term == "screen-256colors"
   set t_Co=256
endif
set background=dark
" Syntax
syntax enable
" Spaces & Tabs
set tabstop=4
set softtabstop=4
set encoding=utf-8
set colorcolumn=80
set expandtab
set paste
set number
set showcmd
set noswapfile
set nobackup
set undofile
set undodir=$HOME/.vim/undo
"set cursorline
set showmatch
" Display unprintable characters f12 - switches
set list
" Unprintable chars mapping
set listchars=tab:•\ ,trail:•,extends:»,precedes:«

" Used to NOT bypass backlines
nnoremap j gj
nnoremap k gk

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'

Plug 'chriskempson/base16-vim'
call plug#end()


" NerdTREE plugin settings
let g:NERDTreeWinPos = "right"
autocmd BufEnter * lcd %:p:h
map <C-o> :NERDTreeToggle<CR>"
let g:NERDTreeWinSize=25

" Airline plugin settings
let g:airline_theme='angr'

" EasyMotion plugin settings
