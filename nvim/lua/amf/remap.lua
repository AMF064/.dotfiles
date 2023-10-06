vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--Normal mode remaps {{{1
vim.keymap.set("n", "H", "0")
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "-", "<cmd>set lz<CR>ddp<cmd>set nolz<CR>")                         --Move line down
vim.keymap.set("n", "~", "<cmd>set lz<CR>ddkP<cmd>set nolz<CR>")                        --Move line up
vim.keymap.set("n", "<leader>\"", "viw<esc>a\"<esc>bi\"<esc>lel")
vim.keymap.set("n", "<leader>'", "viw<esc>a'<esc>bi'<esc>lel")
vim.keymap.set("n", "<leader>u", "mzviw~`z")                                                --Change case of a word
vim.keymap.set("n", "<leader>U", "mzviw~lve~`z")                                            --Capitalize the first letter
vim.keymap.set("n", "<leader>r", "<cmd>vertical keep 60 Repl<CR>")                          --Open Zepl in a vertical split
vim.keymap.set("n", "<leader>R", "<cmd>keep botright 10 Repl<CR>")                          --Open Zepl in a horizontal split
--}}}1

--Insert mode remaps {{{1
vim.keymap.set("i", "<C-c>", "<nop>")                   --Disable C-c
vim.keymap.set("i", "<C-BS>", "<C-w>")                  --Delete words with Control-Backspace
vim.keymap.set("i", "<C-u>", "<esc>mzviw~`za")          --Capitalize  word
vim.keymap.set("i", "<M-u>", "<esc>mzviw~lve~`za")      --Capitalize the first letter
--}}}1

--Visual mode remaps {{{1
vim.keymap.set("v", "H", "0")
vim.keymap.set("v", "L", "$")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")            --Move selected lines down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")            --Move selected lines up
vim.keymap.set("v", "<C-m>", ":'<,'>norm I//<CR>")      --Comment selected lines
--}}}1

--Patter-overview remaps {{{1
--For email addresses
vim.keymap.set("o", "in@", ':<c-u>execute "normal! /@\r:nohlsearch\rhvb"<cr>')
vim.keymap.set("o", "an@", ':<c-u>execute "normal! /@\r:nohlsearch\rlvE"<cr>')
vim.keymap.set("o", "il@", ':<c-u>execute "normal! ?@\r:nohlsearch\rhvb"<cr>')
vim.keymap.set("o", "al@", ':<c-u>execute "normal! ?@\r:nohlsearch\rlvE"<cr>')
--}}}1

--Command-line remaps (Emacs mode) {{{1
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<M-b>", "<C-Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
vim.keymap.set("c", "<M-f>", "<C-Right>")
vim.keymap.set("c", "<C-a>", "<Home>")
vim.keymap.set("c", "<C-t>", "<C-f>")
vim.keymap.set("c", "<C-d>", "<delete>")
--}}}1

--File navigation {{{1
vim.keymap.set("n", "<leader>cd", "<cmd>lchdir %:p:h<CR>")   --Change current directory to the current file's one
--}}}1

--Netrw {{{1
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)               --Open netrw
--}}}1

--Buffer remaps {{{1
vim.keymap.set("n", "<M-l>", vim.cmd.buffers)               --List buffers
--vim.keymap.set("n", "<C-b>", ":buffer <C-d>")             --Go to buffer      We use Telescope
vim.keymap.set("n", "<leader>ba", vim.cmd('badd .'))        --Add buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)            --Next buffer
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious)        --Previous buffer
vim.keymap.set("n", "<leader>q", vim.cmd.bunload)           --Previous buffer you visited
vim.keymap.set("n", "<leader>d", vim.cmd.bdelete)               --Delete buffer
--}}}1

--Terminal remaps {{{1
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")                         --Exit terminal mode
vim.keymap.set("n", "<leader>t", "<C-w>v<C-w>l<cmd>terminal<CR>")   --Open terminal in vertically split window
vim.keymap.set("n", "<leader>T", "<C-w>s<C-w>j<cmd>terminal<CR>")   --Open terminal in horizontally split window
--}}}1

--Clipboard remaps {{{1
vim.keymap.set("n", "<leader>y", "\"+y")         --Yanking in the + register
vim.keymap.set("v", "<leader>y", "\"+y")         --Yanking in the + register (visual mode)
vim.keymap.set("n", "<leader>Y", "\"+Y")         --Yanking line in the + register
vim.keymap.set("n", "<leader>p", "\"+p")         --Pasting from the + register
--}}}1

--Quickfix list remaps {{{1
vim.keymap.set("n", "<leader>o", vim.fn['personal#ToggleQuickFix'])         --Open the quickix list
vim.keymap.set("n", "<C-k>", vim.cmd.cprev)             --Up in the quickfix list
vim.keymap.set("n", "<C-j>", vim.cmd.cnext)             --Down in the quickfix list
vim.keymap.set("n", "<leader>O", vim.fn['personal#ToggleLocationList'])         --Open the local window quickfix list
vim.keymap.set("n", "<leader>k", vim.cmd.lprev)         --Up in the quickfix list (local)
vim.keymap.set("n", "<leader>j", vim.cmd.lnext)         --Down in the quickfix list (local)
--}}}1

--Scripts {{{1
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")    --Chmod the bash file
--}}}1

--Abbreviations{{{1
vim.cmd [[
cabbrev hg helpgrep
cabbrev wm write \| make
]]
--}}}1
