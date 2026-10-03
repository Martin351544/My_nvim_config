vim.g.mapleader = " "

vim.opt.makeprg = "g++ -std=c++17 -O2 -Wall -Wextra % -o %<"

vim.keymap.set("n", "<leader>c", function()
    vim.cmd("write")
    vim.cmd("make")

    local exe = vim.fn.expand("%:r")
    vim.cmd("split")
    vim.cmd("terminal " .. exe)
end, { desc = "Compile and run C++" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>r", ":!python3 %<CR>")
