if !has('autocmd')
	finish
endif

autocmd BufEnter,BufRead,BufNewFile *.ptt    setf tt2html
autocmd BufEnter,BufRead,BufNewFile *.tmpl   setf tt2html
autocmd BufEnter,BufRead,BufNewFile *.tt     setf tt2html

autocmd BufEnter,BufRead *.versions
    \ if getline(1) =~ '^---' |
    \     setf yaml |
    \ endif
