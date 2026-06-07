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
" Functions                            
" ---------------------------------------
function! CreatingFile(type)
	%s/{{username}}/0strezz/g
	%s/{{date}}/\=strftime('%a %e %b, %G: %T')/g
	normal! G
endfunction

" ---------------------------------------
" Augroups                             
" ---------------------------------------
augroup Templates
	autocmd!
	autocmd BufNewFile *.java call CreatingFile('slash')
	autocmd BufNewFile *.c    call CreatingFile('slash')
	autocmd BufNewFile *.cpp  call CreatingFile('slash')
	autocmd BufNewFile *.rust call CreatingFile('slash')
	autocmd BufNewFile *.sql  call CreatingFile('slash')
	autocmd BufNewFile *.py   call CreatingFile('hash')
	autocmd BufNewFile *.sh   call CreatingFile('hash')
	autocmd BufNewFile *.s    call CreatingFile('hash')
	autocmd BufNewFile *.asm  call CreatingFile('hash')
augroup END

" ---------------------------------------
" Others                               
" ---------------------------------------
try
	set undodir=/home/$USER/.vim/stuff
	set undofile
catch
endtry
