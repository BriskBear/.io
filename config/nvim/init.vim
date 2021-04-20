" Vundle Depends
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim

set colorcolumn=90 " Line Ending Indicator
set cursorline     " Underline Cursor
set expandtab      " Convert tabs to spaces
set hidden         " Multi-buffer allowed
set history=1000   " History to 1k vim-cmds
set ignorecase     " ignore case
set incsearch      " highlight as you search
set lcs+=space:❚   " Use star to indicate spaces when enabled
set mouse=a        " Mouse Enabled
set nowrap         " No Line Wrapping
set number         " Display Line Numbers
set ruler          " Cursor Location
set shiftwidth=2   " Tab-width count (in spaces)
set showcmd        " Show the command in-file
set smartcase      " Unless includes capital
set tabstop=2      " Tab-spaces count
syntax on          " Syntax Hilighting

" Close brackets
inoremap {<cr> {<cr>}<c-o><s-o>  
inoremap [<cr> [<cr>]<c-o><s-o>  
inoremap (<cr> (<cr>)<c-o><s-o>  

" Key Mapping
inoremap jk <esc>
inoremap kj <esc>
vnoremap jk <esc>
vnoremap kj <esc>
nnoremap <C-s> :w<CR>
vnoremap <C-s> :w<CR>
nnoremap <C-x> :q<CR>
vnoremap <C-x> :q<CR>
nnoremap <A-p> :set list!<CR>
vnoremap <A-i> :setlocal autoindent!<CR>
nnoremap <A-t> :NERDTree<CR>
vnoremap <A-t> :NERDTree<CR>
nnoremap <A-r> :tabfind 
let mapleader = " " " map leader to Space

call vundle#begin()
" START Plugins
Plugin 'Vundlevim/Vundle.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'

" END Plugins
call vundle#end()
filetype plugin indent on

" Plug Opts
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Colors
hi NonText ctermbg=NONE ctermfg=2 cterm=NONE
hi EndOfBuffer ctermbg=NONE ctermfg=lightgrey cterm=NONE
hi Pmenu ctermbg=black ctermfg=darkgreen cterm=NONE
hi PmenuSbar ctermbg=black ctermfg=NONE cterm=NONE
hi PmenuSel ctermbg=black ctermfg=cyan cterm=NONE
hi PmenuThumb ctermbg=darkgreen ctermfg=darkgreen cterm=NONE
hi IncSearch ctermbg=darkred ctermfg=black cterm=NONE
hi Search ctermbg=yellow ctermfg=black cterm=NONE
hi Directory ctermbg=NONE ctermfg=cyan cterm=NONE
hi LineNr ctermbg=NONE ctermfg=2 cterm=NONE
hi ColorColumn ctermbg=2 ctermfg=black cterm=NONE
hi StatusLine ctermbg=darkgreen ctermfg=black cterm=NONE
hi StatusLineNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
hi StatusLineTerm ctermbg=darkgreen ctermfg=black cterm=NONE
hi StatusLineTermNC ctermbg=darkgrey ctermfg=darkyellow cterm=NONE
hi Visual ctermbg=cyan ctermfg=black cterm=NONE
hi CursorLineNr ctermbg=darkgreen ctermfg=black cterm=NONE
hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline

