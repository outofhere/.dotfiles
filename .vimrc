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
