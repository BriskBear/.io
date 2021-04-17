" Vundle Depends
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
" call pathogen#infect()

colorscheme apprentice

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
vnoremap <A-p> :set list!<CR>
nnoremap <A-i> :setlocal autoindent!<CR>
vnoremap <A-i> :setlocal autoindent!<CR>
nnoremap <A-t> :NERDTree<CR>
vnoremap <A-t> :NERDTree<CR>
nnoremap <A-r> :tabnew 

call vundle#begin()
" START Plugins
Plugin 'Vundlevim/Vundle.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'Shougo/deoplete.nvim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'

" END Plugins
call vundle#end()
filetype plugin indent on
" Plugin Opts
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:deoplete#enable_at_startup = 1

