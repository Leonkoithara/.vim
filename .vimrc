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

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>gic :YcmCompleter GoToInclude<CR>
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gip :YcmCompleter GoToImprecise<CR>
nnoremap <leader>f :YcmCompleter FixIt<CR>
 
nnoremap F :NERDTreeToggle <CR>
 
nnoremap w <C-w>w
nnoremap <C-n> :tabnew<Space>
nnoremap <C-c> :tabc <CR>
 
nnoremap <CR> i <CR><ESC>k$
vnoremap <C-C> :w !xsel -b<CR><CR>
