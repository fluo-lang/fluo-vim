let b:current_syntax = "fluo"

syn keyword fluoKeywords let pub extern unit rec impl pattern

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

hi def link fluoNumber Constant
hi def link fluoKeywords Keyword
hi def link fluoIdentifier Identifier
