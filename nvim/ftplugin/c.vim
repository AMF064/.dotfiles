compiler gcc
setlocal makeprg=gcc\ -Wall\ -Wextra\ -Wpedantic\ -std=c99\ -o\ %<\ %

iabbrev <buffer> sret return ;<left>
iabbrev <buffer> fmain int main(int argc, char *argv[])<CR>{<CR>}<esc>O
iabbrev <buffer> vmain int main(void)<CR>{<CR>}<esc>O
iabbrev <buffer> inc #include
iabbrev <buffer> def #define
