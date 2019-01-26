" Colorscheme. Should also make copy of .vim/colors/badwolf.vim
colorscheme badwolf
syntax enable
" Spaces & Tabs
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set showmatch
" Gundo .vim/bundle/gundo required
nnoremap <leader>u :GundoToggle<CR>
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

call plug#end()

if &term == "screen"
    set t_Co=256
endif

" NerdTREE plugin settings
let g:NERDTreeWinPos = "right"
map <C-o> :NERDTreeToggle<CR>"

" Airline plugin settings
let g:airline_theme='angr'
