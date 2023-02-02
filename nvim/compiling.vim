"Compiler used with the :make command
augroup set_makeprg
    au!
    au BufWritePre *.c setlocal makeprg=gcc\ -Wall\ -Wextra\ -o\ %<.o\ %
    au BufWritePre *.sh setlocal makeprg=%
    au BufWritePre *.lisp setlocal makeprg=clisp\ %
augroup end

"Setting omnifunc variable
