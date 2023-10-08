filetype plugin indent on
syntax on
set nowrap lazyredraw incsearch ignorecase splitright splitbelow wildmenu hidden ruler
set wildmode=longest:full,full
set dir=/tmp
set conceallevel=2
set tags=./tags;/
set path=.,,
set expandtab        " enter spaces when tab is pressed
set textwidth=80     " break lines when line length increases
set softtabstop=4
set shiftwidth=4     " number of spaces to use for auto indent
set autoindent       " copy indent from current line when starting a newline
set backspace=indent,eol,start
set regexpengine=2   " set the default regexp engine (mac will freeze up with default)

packadd! matchit

" set colorscheme and highlights
if &term == 'foot'
    set mouse=a
    set ttymouse=sgr
    " enable truecolor support
    let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
    let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
    " address modifyotherkeys bug
    let &t_TI = "\<Esc>[>4;2m"
    let &t_TE = "\<Esc>[>4;m"
    set termguicolors
    colo monstera
    set fillchars=vert:│,diff:- " use a unicode char for vert screen separators
else
    " italic escape code
    let &t_ZH="\e[3m"
    let &t_ZR="\e[23m"
    colo monstera
    set fillchars=vert:│,diff:- " use a unicode char for vert screen separators
endif
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
