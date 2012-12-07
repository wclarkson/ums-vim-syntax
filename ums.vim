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
syn keyword umRegister  r0 r1 r2 r3 r4 r5 r6 r7

" Matches
syn match   umComment   /\/\/.*$/
syn match   umComment   /#.*$/
syn match   umNumber    /\d/
syn match   umNumber    /0x[A-Fa-f0-9]\+/
syn match   umLabel     /\S\+:/
syn match   umDir       "\.section"
syn match   umDir       "\.data"
syn match   umDir       "\.space"
syn match   umDir       "\.string"
syn match   umDir       "\.zero"
syn match   umDir       "\.temps"


" Regions
syn region umString     start=+"+   skip=+\\"+  end=+"+

" Highlighting
let b:current_syntax = "ums"

hi link umKeyword   Statement
hi link umComment   Comment
hi link umRegister  Type
hi link umLabel     Constant
hi link umDir       Preproc
hi link umNumber    Number
hi link umString    String
