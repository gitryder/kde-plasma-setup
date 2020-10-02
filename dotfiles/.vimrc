:syntax on
:set number relativenumber
:set tabstop=4

:set rtp+=/usr/lib/python3.8/site-packages/powerline/bindings/vim/
:set laststatus=2
:set t_co=256
:set noshowmode
:set noshowcmd
:set shortmess+=f
:set incsearch

:nnoremap ,s :wq<cr>
:nnoremap ,w :w<cr>
:nnoremap ,q :q!<cr>
:nnoremap ,r :source %<cr>
:inoremap jj <ESC>

:let mapleader=" "
:nnoremap <leader>sh :split
:nnoremap <leader>sv :vsplit
:nnoremap <leader>h :wincmd h<cr>
:nnoremap <leader>j :wincmd j<cr>
:nnoremap <leader>k :wincmd k<cr>
:nnoremap <leader>l :wincmd l<cr>
