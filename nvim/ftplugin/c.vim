compiler gcc
setlocal makeprg=gcc\ -Wall\ -Wextra\ -Wpedantic\ -std=c11\ -o\ %<\ %

iabbrev <buffer> ret return ;<left>
iabbrev <buffer> fmain int main(int argc, char *argv[])<CR>{<CR>}<esc>O
iabbrev <buffer> inc #include
iabbrev <buffer> def #define
