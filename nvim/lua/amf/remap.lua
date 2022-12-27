vi*m.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)	--Open netrw
vim.keymap.set("n", "<C-l>", vim.cmd.buffers)	--List buffers
vim.keymap.set("n", "<leader>ba", vim.cmd('badd .'))		--Add buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)	--Next buffer
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious)	--Previous buffer
vim.keymap.set("n", "<C-w>", vim.cmd.bdelete)		--Delete buffer
