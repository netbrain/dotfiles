set nocompatible		" be iMproved, required
filetype off			" required

set clipboard=unnamedplus 	" yank to os clipboard
set go+=a			" autoyank selection
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

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Add plugins to &runtimepath
call plug#end()

colorscheme solarized		" set colorscheme
