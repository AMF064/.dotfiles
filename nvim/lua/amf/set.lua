vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.guicursor = ""

--Autocompletion
vim.opt.path:append { "**" }
vim.opt.wildmenu = true
vim.opt.wildmode = { "longest", "list", "full" }
--Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

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

--System clipboard
vim.opt.cb:append { "unnamedplus" }
