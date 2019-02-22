autocmd BufNewFile,BufRead *.rit set filetype=rit
 
set nocompatible
syntax enable
set path+=**
set wildmenu
filetype on
 
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoread
 
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
	Plug 'Leonkoithara/vwrite', { 'for': 'rit' }

call plug#end()

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>gic :YcmCompleter GoToInclude<CR>
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gip :YcmCompleter GoToImprecise<CR>
nnoremap <leader>f :YcmCompleter FixIt<CR>
 
nnoremap F :NERDTreeToggle <CR>
 
"use gt to goto next tab gT to prev #gt to goto #tab
nnoremap <C-n> :tabnew<Space>
nnoremap <C-c> :tabc <CR>
 
vnoremap <C-C> :w !xsel -b<CR><CR>

nnoremap <leader>n i <CR><ESC>k$
"c skel
nnoremap <leader>c :call CSkel()<CR>

func! CSkel()
	exe 'r' . "~/.vim/templates/basic_skel.c"
	exe "normal! kdd"
endfunc
