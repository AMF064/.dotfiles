"Compiler used with the :make command
augroup set_makeprg
    au!
    au BufWritePre *.c setlocal makeprg=gcc\ -Wall\ -Wextra\ -o\ %<.o\ %
    au BufWritePre *.sh setlocal makeprg=%          "Scripting language
    au BufWritePre *.lisp setlocal makeprg=sbcl\ --script\ %        "Unused. Scripting language, but we are using Vlime.
    au BufWritePre *.py setlocal makeprg=%          "Scripting language
    au BufWritePre *.java setlocal makeprg=javac\ -classpath\ %:p:h\ -d\ %:p:h:h/bin/\ %
    au BufWritePre *.ms setlocal makeprg=groff\ -ms\ -R\ -D\ utf8\ -Tpdf\ %\ >\ %<.pdf
augroup end

"Setting omnifunc variable
augroup set_omnifunc
    au!
    au Filetype c setlocal omnifunc=ccomplete#Complete
    au Filetype python setlocal omnifunc=python3complete#Complete
    au Filetype java setlocal omnifunc=javacomplete#Complete
augroup end
