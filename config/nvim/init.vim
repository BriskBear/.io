<<<<<<< Updated upstream
  set nocompatible

" =================== General Configuration ===========================

  set autoread             "  reload changes from outside of vim
  set colorcolumn=90       "  Line Ending Indicator
  set number               "  #s 'relative' to cursor
  set history=10000        "  much cmdline history
  set ignorecase           "  ignore case
  set lcs+=space:❚         "  Use column to indicate spaces when enabled
  set mouse=a              "  Mouse Enabled
  set showcmd              "  show commands, even if incomplete?
  set showmode             "  default, display mode at bottom line
  set smartcase            "  Unless includes capital
  set cursorline           "  Locate the cursor vertically
  set path+=~/.io/.blanks  "  Edit blanks easy
  set path+=**             "  search recursive for files

  set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType ruby setl omnifunc=syntaxcomplete#Complete
  let $BASH_ENV = "~/.io/config/.aliases"

  " update leader key to space
  let mapleader=" "
  set timeout timeoutlen=1500

  " syntax highlighting
  syntax on

" =================== Swap Files Off ==================================

  set noswapfile
  set nobackup
  set nowb

" =================== Persistent Undo ==================================

  if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
    silent !mkdir ~/.vim/backups > /dev/null 2>$1
    set undodir=~/.vim/backups
    set undofile
  endif

" =================== Folds ============================================

  set foldmethod=indent " Fold based upon indent
  set foldnestmax=3     " Depth max of 3 nested folds`
  set nofoldenable      " Disable default folding

" =================== Keys =============================================

  source ~/.config/nvim/Keymap.vim 

" =================== Indentation ======================================

  set autoindent
  set smartindent
  set smarttab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab

  filetype  plugin  on
  filetype  indent  on

  set nowrap    " Don't Wrap lines
  set linebreak " Wrap lines at a convenient point

" =================== Window Pane Resizing ============================

  nnoremap <silent> <Leader>[ :exe "resize" . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>] :exe "resize" . (winheight(0) * 2/3)<CR>

" =================== Seeing Is Beliving ==============================

  nmap <Leader>b :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
  nmap <Leader>n :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
  nmap <Leader>c  :%.!seeing_is_believing --clean<CR>
  nmap mA # => <esc>
  vmap <leader>m :norm A # => <esc>

" =================== Plugins Load =====================================

  set runtimepath+=~/.vim/kien/ctrlp.vim
  set runtimepath+=~/.vim/tpope/vim-endwise
  set runtimepath+=~/.vim/ervandew/vim-supertab
  set runtimepath+=~/.vim/junegunn/vim-easy-align

" =================== Colors ==========================================

  source ~/.config/nvim/Color.vim

" =================== Status Line =====================================

  set statusline=
  set statusline+=%#LineNr#
  " set statusline+=%=
  set statusline+=\ \ \ \ \ \ 
  set statusline+=\ %f
  set statusline+=\ \ \ \ \ \ 
  set statusline+=\|%c
  set statusline+=\|
  set statusline+=-%l-
  set statusline+=\ \ \ \ \ \ 
  set statusline+=%{&fileencoding?&fileenconding:&encoding}
  set statusline+=\:%{&fileformat}
=======
" Vundle Depends
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
>>>>>>> Stashed changes

