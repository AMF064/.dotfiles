--Basics
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.syntax = "on"

vim.opt.guicursor = ""
vim.opt.cursorline = true

--Autocompletion
vim.opt.path:append { "**" }
vim.opt.wildmenu = true
vim.opt.wildmode = { "longest", "list", "full" }
--Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
--Indentation
vim.opt.smartindent = true
vim.opt.autoindent = true
--No wrap
vim.opt.wrap = false

--Hidden buffers: for changing buffers without saving
vim.opt.hidden = true

--Swap files and undodirs
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

--Highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

--Update time
vim.opt.updatetime = 50

--Listchars
vim.opt.list = true
vim.o.listchars = 'tab:> ,trail:·'

--Netrw
vim.g.netrw_banner = 0

--Slimv
vim.g.slimv_lisp = 'usr/bin/sbcl'
vim.g.slimv_lisp_impl = 'sbcl'
vim.g.slimv_preferred = 'mit'            --For Scheme
vim.g.slimv_swank_cmd = '! st -c \"Floating\" -g 60x20+480+280 -e sbcl --load /home/amf/.local/share/nvim/site/pack/packer/start/slimv/slime/start-swank.lisp &'
vim.g.slimv_swank_scheme = '! st -c \"Floating" -g 60x20+480+280 -e ~/.local/bin/bin/mit-scheme --load /home/amf/.local/share/nvim/site/pack/packer/start/slimv/slime/contrib/swank-mit-scheme.scm &'
vim.g.swank_block_size = 65536
vim.g.slimv_leader = '\\'                --Leader key is \
vim.g.slimv_repl_split = 4               --Vertical split for REPL
vim.g.slimv_repl_split_size = 80         --REPL split size
vim.g.paredit_electric_return = 0        --Disable paredit electric return (annoying)
vim.g.slimv_disable_scheme = 0

--Statusline
--vim.opt.statusline = "%F %m%r%h%w[%L] %y                                                                                                                                     [%{&ff}][%p%%][%04l,%04v]"
