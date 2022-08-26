" Vim 8 defaults
silent! source $VIMRUNTIME/defaults.vim

set nowrap lazyredraw incsearch ignorecase splitright splitbelow wildmenu termguicolors
set dir=~/tmp
set conceallevel=2
set tags=./tags;/
set path+=**
set wildignore+=.git/**
set expandtab        " enter spaces when tab is pressed
set textwidth=80     " break lines when line length increases
set softtabstop=4
set shiftwidth=4     " number of spaces to use for auto indent
set autoindent       " copy indent from current line when starting a newline
set regexpengine=2   " set the default regexp engine (mac will freeze up with default)

let g:repl_config = { 'r': {'cmd':'R'} }
nmap <c-c> gz
nmap <c-c><c-c> gzap}
let r_syntax_fun_pattern = 1
map Q <C-w>c
inoremap <F3> %>%
let r_syntax_fun_pattern = 1
packadd! matchit
augroup psql
    autocmd!
    autocmd FileType sql setlocal filetype=pgsql
    autocmd FileType pgsql setlocal formatprg=pg_format\ -
augroup END

setlocal grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
setlocal grepformat=%f:%l:%c:%m,%f:%l:%m
highlight TrailingWhitespace ctermbg=magenta
call matchadd("TrailingWhitespace", '\v\s+$')
