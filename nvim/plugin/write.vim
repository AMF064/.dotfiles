function! s:indent_file()
    if &filetype ==# "" || &filetype ==# 'markdown' || &filetype ==# 'conf'
        return
    endif
    let l:view = winsaveview()
    keepjumps execute 'keepjumps normal! gg=G'
    call winrestview(l:view)
endfunction

" Do these to things before writing to file
augroup please_be_nice
    au!
    " Indent
    autocmd BufWritePre * silent call <SID>indent_file()
    " Remove trailing whitespace
    autocmd BufWritePre * :%s/\s\+$//e
augroup end

" For editing text, not code
augroup writer_settings
    au!
    autocmd FileType nroff,txt,markdown setlocal wrap
    autocmd FileType nroff,txt,markdown setlocal list
augroup end

" For folds in the configuration
augroup folds
    au!
    autocmd BufWritePre /home/amf/.dotfiles/nvim/* setlocal foldmethod=marker
augroup end
