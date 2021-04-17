" Apprentice.vim -- Vim color scheme.
" Author:      Romain Lafourcade (romainlafourcade@gmail.com)
" Webpage:     https://github.com/romainl/Apprentice
" Description: Essentially a streamlining and conversion to xterm colors of 'sorcerer' by Jeet Sukumaran (jeetsukumaran@gmailcom)
" Last Change: 2020-12-19

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "apprentice"

set t_Co=16

hi Normal ctermbg=NONE ctermfg=2 cterm=NONE
hi NonText ctermbg=NONE ctermfg=2 cterm=NONE
hi EndOfBuffer ctermbg=NONE ctermfg=lightgrey cterm=NONE
hi LineNr ctermbg=NONE ctermfg=2 cterm=NONE
hi FoldColumn ctermbg=black ctermfg=lightgrey cterm=NONE
hi Folded ctermbg=black ctermfg=lightgrey cterm=NONE
hi MatchParen ctermbg=black ctermfg=yellow cterm=NONE
hi SignColumn ctermbg=black ctermfg=black cterm=NONE
hi Comment ctermbg=NONE ctermfg=lightgrey cterm=NONE
hi Conceal ctermbg=NONE ctermfg=black cterm=NONE
hi Constant ctermbg=NONE ctermfg=red cterm=NONE
hi Error ctermbg=NONE ctermfg=darkred cterm=reverse
hi Identifier ctermbg=NONE ctermfg=darkblue cterm=NONE
hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
hi PreProc ctermbg=NONE ctermfg=magenta cterm=NONE
hi Special ctermbg=NONE ctermfg=darkgreen cterm=NONE
hi Statement ctermbg=NONE ctermfg=blue cterm=NONE
hi String ctermbg=NONE ctermfg=green cterm=NONE
hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse
hi Type ctermbg=NONE ctermfg=magenta cterm=NONE
hi Underlined ctermbg=NONE ctermfg=blue cterm=underline
hi Pmenu ctermbg=black ctermfg=darkgreen cterm=NONE
hi PmenuSbar ctermbg=black ctermfg=NONE cterm=NONE
hi PmenuSel ctermbg=black ctermfg=cyan cterm=NONE
hi PmenuThumb ctermbg=darkgreen ctermfg=darkgreen cterm=NONE
hi ErrorMsg ctermbg=black ctermfg=darkred cterm=reverse
hi ModeMsg ctermbg=black ctermfg=green cterm=reverse
hi MoreMsg ctermbg=NONE ctermfg=darkyellow cterm=NONE
hi Question ctermbg=NONE ctermfg=green cterm=NONE
hi WarningMsg ctermbg=NONE ctermfg=darkred cterm=NONE
hi TabLine ctermbg=black ctermfg=darkcyan cterm=NONE
hi TabLineFill ctermbg=black ctermfg=darkgrey cterm=NONE
hi TabLineSel ctermbg=darkcyan ctermfg=black cterm=NONE
hi ToolbarLine ctermbg=black ctermfg=NONE cterm=NONE
hi ToolbarButton ctermbg=darkgrey ctermfg=magenta cterm=NONE
hi Cursor ctermbg=lightgrey ctermfg=NONE cterm=NONE
hi CursorColumn ctermbg=darkgrey ctermfg=NONE cterm=NONE
hi CursorLineNr ctermbg=darkgreen ctermfg=black cterm=NONE
hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline
hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE
hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE
hi StatusLine ctermbg=darkgreen ctermfg=black cterm=NONE
hi StatusLineNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
hi StatusLineTerm ctermbg=darkgreen ctermfg=black cterm=NONE
hi StatusLineTermNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
hi Visual ctermbg=cyan ctermfg=black cterm=reverse
hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=underline
hi VertSplit ctermbg=darkgrey ctermfg=darkgrey cterm=NONE
hi WildMenu ctermbg=darkcyan ctermfg=black cterm=NONE
hi Function ctermbg=NONE ctermfg=yellow cterm=NONE
hi SpecialKey ctermbg=NONE ctermfg=yellow cterm=NONE
hi Title ctermbg=NONE ctermfg=white cterm=NONE
hi DiffAdd ctermbg=black ctermfg=green cterm=reverse
hi DiffChange ctermbg=black ctermfg=magenta cterm=reverse
hi DiffDelete ctermbg=black ctermfg=darkred cterm=reverse
hi DiffText ctermbg=black ctermfg=red cterm=reverse
hi IncSearch ctermbg=darkred ctermfg=black cterm=NONE
hi Search ctermbg=yellow ctermfg=black cterm=NONE
hi Directory ctermbg=NONE ctermfg=cyan cterm=NONE

hi debugPC ctermbg=cyan ctermfg=black cterm=NONE
hi debugBreakpoint ctermbg=darkred ctermfg=NONE cterm=NONE
hi SpellBad ctermbg=NONE ctermfg=darkred cterm=undercurl
hi SpellCap ctermbg=NONE ctermfg=cyan cterm=undercurl
hi SpellLocal ctermbg=NONE ctermfg=darkgreen cterm=undercurl
hi SpellRare ctermbg=NONE ctermfg=red cterm=undercurl
hi ColorColumn ctermbg=2 ctermfg=black cterm=NONE

hi link Terminal Normal
hi link Number Constant
hi link CursorIM Cursor
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Number
hi link HelpCommand Statement
hi link HelpExample Statement
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Structure Type
hi link Tag Special
hi link Terminal Normal
hi link Typedef Type
hi link htmlTagName Statement
hi link htmlEndTag htmlTagName
hi link htmlLink Function
hi link htmlSpecialTagName htmlTagName
hi link htmlTag htmlTagName
hi link htmlBold Normal
hi link htmlItalic Normal
hi link htmlArg htmlTagName
hi link xmlTag Statement
hi link xmlTagName Statement
hi link xmlEndTag Statement
hi link markdownItalic Preproc
hi link asciidocQuotedEmphasized Preproc
hi link diffBDiffer WarningMsg
hi link diffCommon WarningMsg
hi link diffDiffer WarningMsg
hi link diffIdentical WarningMsg
hi link diffIsA WarningMsg
hi link diffNoEOL WarningMsg
hi link diffOnly WarningMsg
hi link diffRemoved WarningMsg
hi link diffAdded String
hi link QuickFixLine Search

let g:terminal_ansi_colors = [
        \ '#1c1c1c',
        \ '#af5f5f',
        \ '#5f875f',
        \ '#87875f',
        \ '#5f87af',
        \ '#5f5f87',
        \ '#5f8787',
        \ '#6c6c6c',
        \ '#444444',
        \ '#ff8700',
        \ '#87af87',
        \ '#ffffaf',
        \ '#87afd7',
        \ '#8787af',
        \ '#5fafaf',
        \ '#ffffff',
        \ ]

" Generated with RNB (https://github.com/romainl/vim-rnb)
