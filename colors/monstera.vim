set background=light

hi clear
let g:colors_name = 'monstera'

" see :h term_setansicolors
" mostly keep it dark because I want contrast
let g:terminal_ansi_colors = ['#000000', '#CC3E28', '#618774', '#B58900', '#1E6FCC', '#5C21A5', '#56949F', '#AAAAAA', '#555555', '#D685AF', '#216609', '#EA9D34', '#1E6FCC', '#9A7599', '#158c86', '#C8CFDE']

" Generic highlight groups
hi Normal guifg=black guibg=white gui=NONE cterm=NONE ctermfg=Black ctermbg=231
hi NonText guifg=grey54 guibg=NONE gui=NONE cterm=NONE ctermfg=white ctermbg=NONE
hi ColorColumn guibg=grey66 guibg=NONE gui=NONE cterm=NONE ctermfg=248 ctermbg=NONE
hi Conceal guifg=grey85 guibg=NONE gui=NONE cterm=NONE ctermfg=254 ctermbg=NONE
hi Comment guifg=black guibg=NONE gui=NONE cterm=italic ctermfg=Black term=italic
hi Cursor guibg=#AAAAAA guifg=NONE gui=NONE cterm=NONE ctermfg=Grey ctermbg=NONE
hi CursorLine cterm=NONE guifg=black guibg=NONE ctermfg=NONE ctermbg=NONE
hi CursorLineNR cterm=bold guifg=black ctermfg=black ctermbg=NONE
hi Directory guifg=#5C21A5 guibg=NONE gui=NONE cterm=NONE ctermfg=92 ctermbg=NONE
hi ErrorMsg guifg=#CC3E28 guibg=NONE gui=NONE cterm=bold ctermfg=160 ctermbg=NONE
hi Folded guifg=NONE guibg=#AAAAAA gui=NONE cterm=NONE ctermfg=Grey ctermbg=NONE
hi FoldColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi SignColumn guifg=NONE guibg=bg gui=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi IncSearch guifg=fg guibg=gold1 gui=NONE cterm=NONE ctermfg=black ctermbg=220
hi! link Search IncSearch
hi LineNr guifg=black guibg=NONE gui=NONE cterm=NONE ctermfg=black ctermbg=none
hi MatchParen guifg=NONE guibg=NONE gui=NONE ctermbg=NONE cterm=bold,underline ctermfg=black
hi Pmenu guifg=black guibg=papayawhip gui=NONE cterm=NONE ctermfg=208 ctermbg=NONE
hi PmenuSel guifg=black guibg=papayawhip gui=bold cterm=bold ctermfg=black ctermbg=208
hi Question guifg=black guibg=NONE gui=NONE cterm=NONE ctermfg=black ctermbg=NONE
hi QuickFixLine guifg=black guibg=NONE gui=bold,underline cterm=bold,underline ctermfg=black
hi StatusLine guifg=black guibg=papayawhip gui=NONE cterm=NONE ctermfg=black ctermbg=218
hi StatusLineNC guifg=grey40 guibg=papayawhip gui=NONE cterm=NONE ctermfg=241 ctermbg=218
hi StatusLineTerm guifg=darkgreen guibg=NONE gui=NONE cterm=NONE ctermfg=218 ctermbg=NONE
hi StatusLineTermNC guifg=darkgreen guibg=NONE gui=NONE cterm=NONE ctermfg=218 ctermbg=NONE
hi VertSplit guifg=black guibg=NONE gui=NONE cterm=NONE ctermfg=black
hi SpellBad guifg=#CC3E28 guibg=NONE gui=undercurl cterm=NONE ctermfg=196 ctermbg=NONE
hi! link SpellCap SpellBad
hi! link SpellLocal SpellBad
hi! link SpellRare SpellBad
hi TabLine guifg=black guibg=NONE gui=NONE cterm=NONE ctermfg=black ctermbg=NONE
hi TabLineSel guifg=black guibg=NONE gui=NONE cterm=bold,underline ctermfg=black
hi TabLineFill guifg=NONE guibg=NONE gui=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi Title guifg=orangered guibg=NONE gui=NONE cterm=NONE ctermfg=214 ctermbg=NONE
hi WarningMsg guifg=#EA9D34 guibg=NONE gui=NONE cterm=NONE ctermfg=214 ctermbg=NONE
hi WildMenu guifg=black guibg=papayawhip gui=NONE cterm=bold,underline ctermfg=214 ctermbg=NONE

hi Constant guifg=#0060cf guibg=NONE gui=NONE cterm=NONE ctermfg=21 ctermbg=NONE
hi Identifier guifg=black guibg=NONE gui=NONE cterm=bold ctermfg=black ctermbg=NONE
hi Function guifg=black guibg=NONE gui=NONE cterm=NONE ctermfg=black ctermbg=NONE
hi Statement guifg=black guibg=NONE gui=NONE cterm=bold ctermfg=black ctermbg=NONE
hi PreProc guifg=#520e9f guibg=NONE gui=NONE cterm=NONE ctermfg=93 ctermbg=NONE
hi Type guifg=#078781 guibg=NONE gui=NONE cterm=NONE ctermfg=36 ctermbg=NONE
hi Special guifg=black guibg=NONE gui=NONE cterm=NONE ctermfg=black ctermbg=NONE
hi Debug guifg=#CC3E28 guibg=NONE gui=NONE cterm=NONE ctermfg=160 ctermbg=NONE
hi Underlined guifg=black guibg=NONE gui=NONE cterm=underline ctermfg=black ctermbg=NONE
hi Error guifg=bg guibg=red gui=NONE cterm=NONE ctermfg=231 ctermbg=red
hi Todo guifg=black guibg=yellow gui=NONE cterm=NONE ctermfg=0 ctermbg=230

" Diffs
hi DiffAdd guifg=black guibg=NONE gui=underline cterm=underline ctermfg=black ctermbg=NONE
hi DiffChange guifg=black guibg=NONE gui=underline cterm=underline ctermfg=black ctermbg=NONE
hi DiffDelete guifg=red guibg=NONE gui=NONE cterm=NONE ctermfg=red ctermbg=NONE
hi DiffText guifg=red guibg=NONE gui=NONE cterm=underline ctermfg=red ctermbg=NONE

" netrw
hi! link netrwClassify Identifier

" ALE
hi AleErrorSign guifg=red guibg=NONE gui=NONE cterm=NONE
hi AleVirtualTextError guifg=NONE guibg=NONE gui=NONE cterm=italic
