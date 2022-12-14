vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)	--Open netrw
vim.keymap.set("n", "<M-l>", vim.cmd.buffers)	--List buffers
vim.keymap.set("n", "<C-b>", ":buffer ")	--Go to buffer
vim.keymap.set("n", "<leader>ba", vim.cmd('badd .'))		--Add buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)	--Next buffer
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious)	--Previous buffer
vim.keymap.set("n", "<C-d>", vim.cmd.bdelete)		--Delete buffer
