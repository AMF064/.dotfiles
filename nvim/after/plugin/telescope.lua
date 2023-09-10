local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>cf', function()
    builtin.find_files({ cwd = "/home/amf/.config/", prompt = "##DOTFILES##",  shorten_path = true,  hidden = true, follow = true })
end)
vim.keymap.set('n', '<leader>ev', function()
    builtin.find_files({ cwd = "/home/amf/.config/nvim/lua/amf/", prompt = "##CONFIG##",  shorten_path = true,  hidden = true, follow = true })
end)
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

--require('telescope').setup{
    --    defaults = {
        --        vimgrep_arguments = {
            --            "grep",
            --            "-rn",
            --            "-l",
            --            "--color=never",
            --        }
            --    }
            --}
