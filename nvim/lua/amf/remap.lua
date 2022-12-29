vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)	--Open netrw
vim.keymap.set("n", "<M-l>", vim.cmd.buffers)	--List buffers
vim.keymap.set("n", "<C-n>", ":buffer ")	--Go to buffer
vim.keymap.set("n", "<leader>ba", vim.cmd('badd .'))		--Add buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)	--Next buffer
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious)	--Previous buffer
vim.keymap.set("n", "<C-d>", vim.cmd.bdelete)		--Delete buffer
vim.keymap.set("n", "<C-h>", "<C-w h>")
vim.keymap.set("n", "<C-l>", "<C-w l>")
vim.keymap.set("n", "<C-j>", "<C-w j>")
vim.keymap.set("n", "<C-k>", "<C-w k>")             --Change between split screens
--Easierly
