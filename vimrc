filetype plugin indent on
syntax on
set nowrap lazyredraw incsearch ignorecase splitright splitbelow wildmenu
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
set hidden
set regexpengine=2   " set the default regexp engine (mac will freeze up with default)

nmap <c-c> gz
nmap <c-c><c-c> gzap}
map Q <C-w>c
packadd! matchit
augroup psql
    autocmd!
    autocmd FileType sql setlocal formatprg=pg_format\ -
augroup END

setlocal grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
setlocal grepformat=%f:%l:%c:%m,%f:%l:%m
highlight TrailingWhitespace ctermbg=magenta
call matchadd("TrailingWhitespace", '\v\s+$')
