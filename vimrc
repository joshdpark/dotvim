filetype plugin indent on
syntax on
set nowrap lazyredraw incsearch ignorecase splitright splitbelow wildmenu hidden ruler hlsearch
set wildmode=longest:full,full
set dir=/tmp
set conceallevel=2
set tags=./tags;/
set path=.,,
set expandtab         " enter spaces when tab is pressed
set softtabstop=4
set shiftwidth=4      " number of spaces to use for auto indent
set autoindent        " copy indent from current line when starting a newline
set backspace=indent,eol,start
set regexpengine=2    " set the default regexp engine (mac will freeze up with default)
set clipboard=unnamed " clipboard is automatically set to "* register
set cinoptions+=:0l1  " format switch/case statements in c
set fillchars=vert:│,diff:- " use a unicode char for vert screen separators
set scrolloff=5
packadd! matchit
" recommended way of navigating functions with { after declaration, and not on newline
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>

" italic escape code
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
colo monstera
set fillchars=vert:│,diff:- " use a unicode char for vert screen separators

" highlight trailing whitespace
highlight TrailingWhitespace ctermbg=magenta
call matchadd("TrailingWhitespace", '\v\s+$')

" for checking a highlight group
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

" removes trailing whitespace
function TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction
command TrimWhiteSpace call TrimWhiteSpace()
