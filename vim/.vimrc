set nocompatible		" be iMproved, required
filetype off			" required

"set clipboard=unnamed	 	" yank to os clipboar
set clipboard+=autoselect
set guioptions+=ad
"set go+=a			" autoyank selection
set number			" enable line numbers
set mouse=a			" enable mouse	
syntax on			" enable syntax higlighting
let mapleader = ","		" set leader to ,
set hlsearch			" show matches during searching
set backspace=2			" set normal backspace
set background=dark		" set dark backround
let g:solarized_termtrans = 1	" transparent terminal

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized', { 'set':  'all' }

" Add plugins to &runtimepath
call plug#end()

colorscheme solarized		" set colorscheme
