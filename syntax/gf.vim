" Vim syntax file
" Language: Grammatical Framework
" Maintainer: Grégoire Détrez, Daniel Vidal Hussey
" Latest Revision: 26 March 2015

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword gfStructural abstract concrete resource interface instance
syn keyword gfStructural incomplete of with open
syn match   gfStructural "\*\*\|-"
syn keyword gfJudgement cat fun lincat lin oper flags param data lindef printname
syn keyword gfFlags startcat lexer unlexer optimize probs
syn keyword gfConditional case table overload variants pre
syn keyword gfLambda where let in

" language
syn match   gfFunction  "[[:alpha:]][[:alnum:]_]*"
syn match   gfDelimiter "(\|)\|\[\|\]\|,\|;\|_\|{\|}"
syn match   gfSymbols   ":\|->\|\\\|\\\\\|=>\|!"
syn match   gfOperators "++\|+"

" Comments
syn keyword gfTodo TODO FIXME XXX NOTE contained 
syn match   gfComment "--.*$" contains=gfTodo
syn region  gfComment start="{-" end="-}"

" Strings
syn region  gfString start='"' end='"'

syn match   gfOption "--#.*$"

let b:current_syntax = "gf"

hi def link gfTodo          Todo
hi def link gfComment       Comment
hi def link gfString        String
hi def link gfConditional   Conditional
hi def link gfStructural    Structure
hi def link gfJudgement     Structure
hi def link gfFlags			Keyword
hi def link gfLambda	    Keyword
hi def link gfFunction      Function
hi def link gfSpecialChar   SpecialChar
hi def link gfDelimiter     Delimiter
hi def link gfSymbols       Operator
hi def link gfOperators     Operator
hi def link gfOption        PreProc

