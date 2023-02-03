vim.g.mapleader = " "

--Insert mode remaps
vim.keymap.set("i", "<C-c>", "<Esc>")         --Control-C acts as Escape

--Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)	--Open netrw

--Buffer remaps
vim.keymap.set("n", "<M-l>", vim.cmd.buffers)	--List buffers
vim.keymap.set("n", "<C-b>", ":buffer <C-d>")	--Go to buffer
vim.keymap.set("n", "<leader>ba", vim.cmd('badd .'))		--Add buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)	--Next buffer
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious)	--Previous buffer
vim.keymap.set("n", "<leader>q", vim.cmd.bunload)	     --Previous buffer you visited
vim.keymap.set("n", "<M-d>", vim.cmd.bdelete)		--Delete buffer
vim.keymap.set("n", "<M-t>", vim.cmd.terminal)		--Open terminal

--Terminal remaps
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")         --Exit terminal mode

--Clipboard remaps
vim.keymap.set("n", "<leader>y", "\"+y")         --Yanking in the + register
vim.keymap.set("v", "<leader>y", "\"+y")         --Yanking in the + register
vim.keymap.set("n", "<leader>Y", "\"+Y")         --Yanking in the + register
vim.keymap.set("n", "<leader>p", "\"+p")         --Pasting in the + register

--Quickfix list remaps
vim.keymap.set("n", "<C-k>", vim.cmd.cprev)         --Up in the quickfix list
vim.keymap.set("n", "<C-j>", vim.cmd.cnext)         --Down in the quickfix list
vim.keymap.set("n", "<leader>k", vim.cmd.lprev)         --Up in the quickfix list (local)
vim.keymap.set("n", "<leader>j", vim.cmd.lnext)         --Down in the quickfix list (local)
