syntax on "reset syntax highlighting
colorscheme slate "set colorscheme
set autoindent "carry on indentation to next line
set expandtab "convert tabs to spaces
set shiftwidth=4 ">>/<< shift width
set softtabstop=4 "tab width on pressing TAB key
set incsearch "highlight searches as typed
set nu "show line numbers
set ruler "show row,column
set wrap "wrap lines
set textwidth=0 wrapmargin=0 "disable automatic wrapping
set formatoptions-=tc "disable autoformatting width,autocomment
set hlsearch "highlight search word
set backspace=indent,eol,start "backspace behaviour
set wildmode=longest,list "autocompletion in cmd line
set autochdir "set current directory automatically
set iskeyword+=- "add this to word list
vnoremap <C-X> "+x
vnoremap <C-C> "+y

ca W w
ca Q q
map <F4> "+yiw
map <C-V> "+gP
cmap <C-V> <C-R>+
exe 'inoremap <script> <C-V>' paste#paste_cmd['i'] 
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']
noremap <C-Q> <C-V>
if !has("unix")
  set guioptions-=a
endif

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set completeopt=longest,menu
"set dictionary="/usr/share/dict/words"
map <F5> <leader>ig
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
set lazyredraw

set nomodeline
set modelines=0
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>

"do not load rc files for shell
set shell=/bin/bash\ --norc

"let &winheight = &lines
"paste at cursor position not mouse pointer
map <MiddleMouse> "*p 

set guioptions-=T
