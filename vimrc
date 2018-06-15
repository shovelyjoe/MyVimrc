"Run Pathogen to install plugins
execute pathogen#infect()

"Set up file name based colour scheme
filetype on
syntax on
colorscheme onedark

"Map Leader Key to spacebar
"Leader shortcut to source vimrc
"<Leader> x2 == cd - (but for files)
let mapleader=" "
map <Leader>s :source ~/.vim/vimrc<CR>
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
set hlsearch

"Map split jumps to Ctrl+[h,j,k,l]
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"Auto-complete curly braces
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"Show matching parenthesis
set showmatch

"Create bar column to show ideal file width (90 chars)
"Line numbering on
"Toggle Line number & Signify (Version Control Symbols)
set colorcolumn=90
set number
nmap <Leader>l :set invnumber <bar> SignifyToggle<CR>

"Nerdtree display hidden files
"Toggle display of the tree with <Leader> + n
"Locate the focused file in the tree with <Leader> + j
"Always open the tree when booting Vim, but don’t focus it
"Do not display some useless files in the tree
"Close Nerdtree automatically when other windows are closing
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

