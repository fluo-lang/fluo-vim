let b:current_syntax = "fluo"

syn keyword fluoKeywords let pub extern unit rec impl pattern type return yield

syn match fluoMultiLineComment '\/\*\(.\|\n\)\{-}\*\/'
syn match fluoSingleLineComment '--.*'

syn match fluoIdentifier '[a-zA-Z_][a-zA-Z_0-9]*'

syn match fluoNumber '\d\+'
syn match fluoNumber '[+-]\d\+'
syn match fluoNumber '[-+]\d\+\.\d+'

" Floating point like number with E and no decimal point (+,-)
syn match fluoNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match fluoNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match fluoNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match fluoNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

hi def link fluoMultiLineComment Comment
hi def link fluoSingleLineComment Comment
hi def link fluoNumber Constant
hi def link fluoKeywords Keyword
hi def link fluoIdentifier None
