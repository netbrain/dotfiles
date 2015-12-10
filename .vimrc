set nocompatible		" be iMproved, required
filetype off			" required

" VUNDLE
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTREE
Plugin 'scrooloose/nerdtree'

" COLORSCHEMES
Plugin 'altercation/vim-colors-solarized'

" Bracketed paste
Plugin 'ConradIrwin/vim-bracketed-paste'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
colorscheme solarized		" set colorscheme

"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd l

" NERDTREE
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

map <Leader>n :NERDTreeToggle<CR>

