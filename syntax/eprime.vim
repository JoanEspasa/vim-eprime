" Vim syntax file
" Language: Essence Prime
" Maintainer: Joan Espasa Arxer

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "eprime"

" Keywords and matches
syntax match eprimeLanguage "language \(Essence\|ESSENCE\)' \d\+\(\.\d\)*"
syn keyword eprimeKeywords letting find be indexed by 
syn keyword eprimeKeywords of domain such that given where 
syn keyword eprimeBoolean true false

syn keyword eprimeTypes int bool matrix
syn match eprimeInteger '\d\+'
syn match eprimeInteger '[-+]\d\+'
syn match eprimeFloat '\d\+\.\d*'

syn keyword eprimeGC gcc alldifferent_except alldifferent allDiff table

syn keyword eprimeTodo contained TODO FIXME XXX NOTE
syn match eprimeComment "\$.*$" contains=eprimeTodo

syn keyword eprimeOperator min max intersect union forall forAll sum exists in
syntax match eprimeOperator '\!\|||\|\*\*'
syntax match eprimeOperator '-\|\*\|%'
syntax match eprimeOperator '+\|-\|=\|!=\|<\|<=\|>\|>='
syntax match eprimeOperator '<=lex\|<lex\|>=lex\|>lex'
syntax match eprimeOperator '->\|\<\-\>\|,\|/\\\|\\/'

" highlights
highlight link eprimeLanguage Special
highlight link eprimeOperator Operator
highlight link eprimeKeywords Keyword
highlight link eprimeGC Function 
highlight link eprimeComment Comment
highlight link eprimeTypes Type
highlight link eprimeTodo Todo
highlight link eprimeConstant Constant
highlight link eprimeBoolean Boolean
highlight link eprimeInteger Number
highlight link eprimeFloat Number
