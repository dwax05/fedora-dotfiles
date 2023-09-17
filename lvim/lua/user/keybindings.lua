vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<C-f>', '<C-d>', { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Caps lock remap performs next input in normal mode
vim.keymap.set("i", "<D-C-A-S>", "<C-o>")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set('n', '<leader><leader>/', '<Plug>(easymotion-jumptoanywhere)')

vim.keymap.set("n", "<leader>ww", "<cmd>Neorg index<CR>", { silent = true })
vim.keymap.set("n", "<leader>wr", "<cmd>Neorg return<CR>", { silent = true })
vim.keymap.set("n", "<leader>t", "<cmd>Neorg toggle-concealer<CR>", { silent = true })
