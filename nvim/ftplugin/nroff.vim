setlocal makeprg=groff\ -%:e\ -e\ -R\ -D\ utf8\ -Tpdf\ %\ >\ %<.pdf

nnoremap <buffer> <localleader>pp o.PP<CR>
nnoremap <buffer> <localleader>nh o.NH<CR>
