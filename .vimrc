" Whitespace
set expandtab
set tabstop=2
set sw=2
set ts=2
set smartindent
set nowrap

" mac osx
set backspace+=indent,eol,start

" Display
set background=dark
colorscheme molokai
let g:molokai_original = 0 
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set nofoldenable
syntax on

" Execute python file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

set t_Co=256

ab pymain if __name__ == '__main__':

" Exhuberant C-Tags
set tags=.tags

" F5 Paste shortcut
nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

" Set color column to column 80 for easy code wrapping
set colorcolumn=80
" hi ColorColumn ctermbg=#AE81FF guibg=#AE81FF 

" map ; to :
map ; :
" map jj to escape
imap jj 
" map :syn sync fromstart to :sfs
cmap sfs syn sync fromstart
" map leader from , to space
let mapleader = "\<Space>"

" Groovy
au BufNewFile,BufRead *.groovy setf groovy
if did_filetype()
  finish
endif
if getline(1) =~ '^#!.*[/\\]groovy\>'
  setf groovy
endif

" Vundle plugins:
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'pangloss/vim-javascript'
Bundle 'jQuery'
Bundle 'groovy.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'derekwyatt/vim-scala'
Bundle 'kien/ctrlp.vim'
Bundle 'atweiden/vim-dragvisuals'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
Bundle 'wesQ3/vim-windowswap'
Bundle 'godlygeek/tabular'
Bundle 'jimenezrick/vimerl'
Bundle 'mattn/flappyvird-vim'
Bundle 'rust-lang/rust.vim'

filetype plugin indent on

set wildignore+=*.class,.git,.hg,.svn,**/target/classes/**,**/target/test-classes/**,**/target/test-reports/**.html,**/target/test-reports/**.xml,**/build/**

let g:ctrlp_custom_ignore = '(JS|js|markdown|iml|yaml|yml|coffee|rb|d|TXT|h|gradle|ini|el|cfg|html|html|MakeFile|xml|html5|properties|c|txt|java|py|json|pl|gsp|groovy|conf|csv|css|php)$'

" vim-dragvisuals setup
runtime bundle/vim-dragvisuals/dragvisuals.vim

vmap <expr> <LEFT>  DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <DOWN>  DVB_Drag('down')
vmap <expr> <UP>    DVB_Drag('up')
vmap <expr> D       DVB_Duplicate()

let g:DVB_TrimWS = 1

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <leader>b :TagbarToggle<cr>
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
