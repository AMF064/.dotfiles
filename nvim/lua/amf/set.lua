--Basics {{{1
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.syntax = "on"

vim.opt.guicursor = ""
vim.opt.cursorline = true
vim.opt.scrolloff = 8
--Folds
vim.opt.foldmethod = 'marker'
vim.opt.foldlevelstart = 0
--Update time
vim.opt.updatetime = 50
--Netrw
vim.g.netrw_banner = 0
--Hidden buffers: for changing buffers without saving
vim.opt.hidden = true
--}}}1

--Autocompletion {{{1
vim.opt.path:append { "**" }
vim.opt.wildmenu = true
vim.opt.wildmode = { "longest", "list", "full" }
vim.opt.tabstop = 4
--}}}1

--Tabs {{{1
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
--}}}1

--Indentation {{{1
vim.opt.smartindent = true
vim.opt.autoindent = true
--No wrap
vim.opt.wrap = false
--}}}1

--Swap files and undodirs {{{1
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
--}}}1

--Highlight {{{1
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
--}}}1

--Listchars {{{1
vim.opt.list = true
vim.o.listchars = 'tab:> ,trail:·'
--}}}

--Slimv {{{1
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
--}}}

--Statusline {{{1
--vim.opt.statusline = "%t - %y [%L]%=%{getcwd()}/%=%([%M%R%H%W]%)[%P][%04l,%04v]"
--}}}1
