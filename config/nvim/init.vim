" Vundle Depends
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
" call pathogen#infect()

" colorscheme apprentice

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
nnoremap <A-r> :tabnew 
let mapleader = " " " map leader to Space

call vundle#begin()
" START Plugins
Plugin 'Vundlevim/Vundle.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'ajh17/VimCompletesMe'
Plugin 'natebosch/vim-lsc'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
" Plugin 'Shougo/deoplete.nvim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'

" END Plugins
call vundle#end()
filetype plugin indent on
" Plug Opts
let g:lsc_server_commands = {
 \ 'ruby': {
 \   'command': 'solargraph stdio',
 \   'log_level': -1,
 \   'suppress_stderr': v:true,
 \  },
 \ 'bash': {
 \   'command': 'bash-language-server',
 \   'args': ['start'],
 \   'filetypes': ['sh'],
 \   'ignoredRootPaths': ["~"],
 \  }
 \}

let g:lsc_auto_map = {
 \  'GoToDefinition': 'gd',
 \  'FindeReferences': 'gr',
 \  'Rename': 'gR',
 \  'ShowHover': 'K',
 \  'FindeCodeActions': 'ga',
 \  'Completion': 'omnicfunc',
 \}

let g:lsc_enable_autocomplete  = v:true
let g:lsc_enable_diagnostics   = v:true
let g:lsc_reference_highlights = v:true
let g:lsc_trace_level          = 'off'
set completeopt=menu,menuone,noinsert,noselect

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

