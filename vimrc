let mapleader=","

" ---------------------------------------
" Standard and common configurations
" ---------------------------------------
set number
set hlsearch
set wildmenu
set ruler
set nowrap
set ignorecase
set smartcase
set showmatch
set smarttab
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" ---------------------------------------
" Maps                                 
" ---------------------------------------
map <space> /
map <silent> <leader><cr> :noh<cr>
map <leader>tn :tabnew 
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tq :tabp<cr>
map <leader>te :tabn<cr>

" ---------------------------------------
" Others                               
" ---------------------------------------
try
	set undodir=/home/$USER/.vim/stuff
	set undofile
catch
endtry

set background=dark
color retrobox

