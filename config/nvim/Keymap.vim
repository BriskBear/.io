" Align on argument
nmap ga <esc>vip:EasyAlign 

" Comment / Uncomment Lines: set mark i on one end move cursor to other end
" C-i to comment <space>i to uncomment
nnoremap <c-i> mp^<c-v>'iI" <esc>`p
nnoremap <Leader>i mp^<c-v>'ilx`p

" Indent / Unindent block ( i marker and cursor )
nnoremap <Leader><Tab> mp^<c-v>'iI  <esc>`p
nnoremap <Leader><A-Tab> mp<home><c-v>'ihx`p 

" Esc. Remaps
inoremap jk <esc>
inoremap kj <esc>
vnoremap jk <esc>
vnoremap kj <esc>

" Quick-Save / Exit
nnoremap <C-s> :w<CR>
vnoremap <C-s> :w<CR>
nnoremap <C-x> :q<CR>
vnoremap <C-x> :q<CR>
nnoremap <Leader>q :q!<CR>
vnoremap <Leader>q :q!<CR>

" Toggle Visible Spaces
nnoremap <A-p> :set list!<CR>
vnoremap <A-p> :set list!<CR>

" I Don't think this is working
nnoremap <A-i> :setlocal autoindent!<CR>
vnoremap <A-i> :setlocal autoindent!<CR>

" Open a file-finder pane
nnoremap <A-t> :NERDTree<CR>
vnoremap <A-t> :NERDTree<CR>

" Open a file in a new tab (specify path/to/file)
nnoremap <A-r> :tabfind 
nnoremap <Leader>t :tabnew 

" Reaload the Config file (after saving changes!)
nnoremap <Leader>r :source $MYVIMRC<CR>
vnoremap <Leader>r :source $MYVIMRC<CR>

" Hash-comment 1 line
nnoremap <Leader># ^i# <c-o>$

" Instead of turning off auto-indent, paste-toggle
set pastetoggle=<Leader>p
 
" Close brackets automagickally
inoremap {<cr> {<cr>}<c-o><s-o>  
inoremap [<cr> [<cr>]<c-o><s-o>  
inoremap (<cr> (<cr>)<c-o><s-o>  
inoremap (<space> (  )<c-o>h
inoremap [<space> [  ]<c-o>h
inoremap {<space> {  }<c-o>h
inoremap <<space> <  ><c-o>h
inoremap " ""<c-o>i
inoremap ' ''<c-o>i
inoremap ` ``<c-o>i
inoremap ` ``<c-o>i
inoremap ` ``<c-o>i
inoremap ( ()<c-o>i
inoremap { {}<c-o>i
inoremap [ []<c-o>i
inoremap < <><c-o>i
inoremap (' ('')<c-o>h
inoremap \" \"\"<c-o>h


