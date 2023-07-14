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

--Statusline {{{1
vim.opt.statusline = "%t - %y [%L]%=%{getcwd()}/%=%([%M%R%H%W]%)[%P][%04l,%04v]"
--}}}1
