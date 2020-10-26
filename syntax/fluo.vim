let b:current_syntax = "fluo"

syn keyword basicLanguageKeywords let
syn match fluoNumber '\d\+'
syn match fluoNumber '[+-]\d\+'
syn match celNumber '[-+]\d\+\.\d+'

" Floating point like number with E and no decimal point (+,-)
syn match fluoNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match fluoNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match fluoNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match fluoNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
