"jVundle Depends
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
set path+=** " Search every subdir-down

set colorcolumn=90 " Line Ending Indicator
set cursorline     " Underline Cursor
set expandtab      " Convert tabs to spaces
set hidden         " Multi-buffer allowed
set history=1000   " History to 1k vim-cmds
set ignorecase     " ignore case
set incsearch      " highlight as you search
set lcs+=space:❚   " Use column to indicate spaces when enabled
set mouse=a        " Mouse Enabled
set nowrap         " No Line Wrapping
set number         " Display Line Numbers
set ruler          " Cursor Location
set shiftwidth=2   " Tab-width count (in spaces)
set showcmd        " Show the command in-file
set smartcase      " Unless includes capital
set tabstop=2      " Tab-spaces count
syntax on          " Syntax Hilighting

" Snippets
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
nnoremap ,def :-1read $HOME/.config/nvim/snippets/def<CR>$mnjmm2jml`n
"  inoremap def<space> def <CR>  <CR>end<c-o>2k 

" Key Mapping
let mapleader=" "
source $HOME/.config/nvim/Keymap.vim

call vundle#begin()
" START Plugins
Plugin 'Vundlevim/Vundle.vim'
Plugin 'neovim/nvim-lspconfig'
Plugin 'hrsh7th/vim-vsnip'
Plugin 'hrsh7th/vim-vsnip-integ'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/vim-easy-align'
" Plugin 'sirver/ultisnips'
" Plugin 'honza/vim-snippets'
" Plugin 'thoughtbot/vim-rspec'
" Plugin 'tpope/vim-endwise'
" Plugin 'tpope/vim-rails'
" Plugin 'vim-syntastic/syntastic'

" END Plugins
call vundle#end()
filetype plugin indent on

" Plugin Opts
source ~/.config/nvim/bundle_cfg/nvim-lspconfig/lsp-config.vim
luafile ~/.config/nvim/lsp/ruby-ls.lua
luafile ~/.config/nvim/lsp/bash-ls.lua
luafile ~/.config/nvim/lsp/html-ls.lua

" let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/snippets']
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:deoplete#enable_at_startup = 1

" Colors
hi NonText ctermbg=NONE ctermfg=2 cterm=NONE
hi EndOfBuffer ctermbg=NONE ctermfg=darkgreen cterm=NONE
hi Pmenu ctermbg=black ctermfg=darkgreen cterm=NONE
hi PmenuSbar ctermbg=black ctermfg=NONE cterm=NONE
hi PmenuSel ctermbg=black ctermfg=cyan cterm=NONE
hi PmenuThumb ctermbg=darkgreen ctermfg=darkgreen cterm=NONE
hi ErrorMsg ctermbg=black ctermfg=darkred cterm=reverse
hi ModeMsg ctermbg=black ctermfg=green cterm=reverse
hi LineNr ctermbg=NONE ctermfg=2 cterm=NONE
hi CursorLineNr ctermbg=darkgreen ctermfg=black cterm=NONE
hi StatusLine ctermbg=darkgreen ctermfg=black cterm=NONE
hi WildMenu ctermbg=darkcyan ctermfg=black cterm=NONE
hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline
hi ColorColumn ctermbg=2 ctermfg=black cterm=NONE

