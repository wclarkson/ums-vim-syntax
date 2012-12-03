" Vim syntax file
" UM Macro Assembly Language
" Will Clarkson

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword umKeyword   if goto map segment nand xor
syn keyword umKeyword   unmap input output in program
syn keyword umKeyword   off here halt words push pop
syn keyword umKeyword   on stack

" Matches
syn match   umComment   /\/\/.*$/
syn match   umComment   /#.*$/
syn match   umNumber    /[0-9]+/
syn match   umNumber    /0x[0-9]+/
syn match   umRegister  /r[0-7]/
syn match   umLabel     /[a-z]+?:/
syn match   umDir       ".section"
syn match   umDir       ".data"
syn match   umDir       ".space"
syn match   umDir       ".string"
syn match   umDir       ".zero"
syn match   umDir       ".temps"


" Regions

let b:current_syntax = "ums"

hi def link umKeyword   Statement
hi def link umComment   Comment
hi def link umRegister  Keyword
hi def link umLabel     Comment
hi def link umDir       Identifier
hi def link umNumber    Number
