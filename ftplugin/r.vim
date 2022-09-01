setlocal shiftwidth=2 tabstop=2 softtabstop=2
let &makeprg="R --no-save -s -e 'source(\"$*\")'"
let &errorformat='%.%#Error\ in\ %m,\ #%l'
let g:repl_config = { 'r': {'cmd':'R'} }
let r_syntax_fun_pattern = 1
inoremap <F3> %>%
