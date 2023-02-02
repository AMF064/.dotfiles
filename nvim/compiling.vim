augroup set_makeprg
    au!
    au BufWritePre *.c set makeprg=gcc\ -Wall\ -Wextra\ -o\ %<.o\ %
    au BufWritePre *.sh set makeprg=\./%
    au BufWritePre *.lisp set makeprg=clisp %
augroup end
