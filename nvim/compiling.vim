"Compiler used with the :make command
augroup set_makeprg
    au!
    au BufWritePre *.c setlocal makeprg=gcc\ -Wall\ -Wextra\ -o\ %<.o\ %
    au BufWritePre *.sh setlocal makeprg=%
    au BufWritePre *.lisp setlocal makeprg=clisp\ %
    au BufWritePre *.py setlocal makeprg=python\ %
    au BufWritePre *.java setlocal makeprg=javac\ -classpath\ %:p:h\ -d\ %:p:h:h/lib/\ %\ &&\ java\ -classpath\ %:p:h:h/lib/\ %
augroup end

"Setting omnifunc variable
augroup set_omnifunc
    au!
    au Filetype c setlocal omnifunc=ccomplete#Complete
    au Filetype python setlocal omnifunc=python3complete#Complete
augroup end
