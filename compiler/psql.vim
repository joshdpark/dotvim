" Vim compiler file
" Compiler: psql 

if exists("current_compiler")
    finish
endif
let current_compiler = "psql"

CompilerSet makeprg=psql\ -q\ -b\ -f\ %\ $*
CompilerSet errorformat=%Epsql:%f:%l:\ ERROR:%m,%ELINE%.%#,%Z%p^,psql:%f:%l:\ ERROR:%m

" vim: tabstop=8 shiftwidth=4 softtabstop=4 expandtab
