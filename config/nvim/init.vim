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
<<<<<<< Updated upstream
  set path+=~/.io/.blanks  "  Edit blanks easy
  set path+=**             "  search recursive for files

=======
  set path+=~/.io/.blanks  "  Search .io blanks
  set path+=**             "  search recursive for files
>>>>>>> Stashed changes
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
