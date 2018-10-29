syntax enable
 
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set tabstop=4
set softtabstop=4
set shiftwidth=4
 
set number relativenumber
 
set laststatus=2
set statusline+=%{fugitive#statusline()}
set statusline+=\ %t
set statusline+=%=
set statusline+=%l,
set statusline+=%c
set statusline+=\ %p%%
set statusline+=(%L)

call plug#begin('~/.vim/plugged')

	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'valloric/youcompleteme'

call plug#end()

nnoremap F :NERDTreeToggle <CR>
nnoremap w <C-w>w
nnoremap <C-n> :tabnew<Space>
nnoremap <C-c> :tabc <CR>
nnoremap <CR> i <CR><ESC>k$
nnoremap <F9> :YcmCompleter FixIt <CR>
