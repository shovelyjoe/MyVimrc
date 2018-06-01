"Run Pathogen to install plugins
execute pathogen#infect()

"Set up file name based colour scheme
filetype on
syntax on
colorscheme onedark

"Create bar column to show ideal file width (90 chars)
"Line numbering on
set colorcolumn=90
set number

"Map Leader Key to spacebar
"Leader shortcut to source vimrc
"<Leader> x2 === cd - (but for files)
let mapleader=" "
map <Leader>s :source ~/.vimrc<CR>
nnoremap <Leader><Leader> :e#<CR>

"Modernise memory usage
set hidden
set history=100

"Indentation logic
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"On save, remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

"Highlight searched terms
"Cancel highlight with Esc
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"Map split jumps to Ctrl+[h,j,k,l]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"Show matching parenthesis
set showmatch


