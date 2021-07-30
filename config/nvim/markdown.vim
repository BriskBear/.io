" --- Var
 let $VIMBROWSER='/usr/sbin/brave'
 let $OPENBROWSER='nnoremap <F5> :!'. $VIMBROWSER .' %:p<CR>'
" --- Opener
 augroup OpenMdFile
   autocmd!
   autocmd BufEnter *.md echo "Press F5 to Open .md File"
   autocmd BufEnter *.md exe $OPENBROWSER
 augroup END
