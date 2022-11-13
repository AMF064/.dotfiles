" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	      for Haiku:  ~/config/settings/vim/vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

"if &t_Co > 2 || has("gui_running")
  "" Switch on highlighting the last used search pattern.
  "set hlsearch
"endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

"Tabs
set tabstop=4 softtabstop=4
set smartindent
set expandtab
set shiftwidth=4

"Cursor
set guicursor=

"Search for local vimrc
set exrc

" Relative numbers
set number relativenumber

"Incremental search
set incsearch

"Highlight search
set nohls

"Scrolloff
set scrolloff=8

"Hidden buffer
set hidden

"Split windows
set splitbelow splitright

"Autocompletion
set wildmode=longest,list,full

"Clipboard
set cb=unnamedplus

"Keymaps
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <silent><C-t> :tabnew<CR>
nnoremap <silent><C-ç> :tabn<CR>
nnoremap <silent><C-tab> :tabp<CR>
