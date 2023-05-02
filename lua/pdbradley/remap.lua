vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", '<Esc>')

--easy nav across vim splits
vim.keymap.set("n", "<C-h>", '<C-w>h')
vim.keymap.set("n", "<C-j>", '<C-w>j')
vim.keymap.set("n", "<C-k>", '<C-w>k')
vim.keymap.set("n", "<C-l>", '<C-w>l')

--map <leader>w to open a new vsplit and switch to it
vim.keymap.set("n", "<leader>w", '<C-w>v<C-w>l')
vim.keymap.set("n", "<leader>h", '<C-w>s<C-w>j')

--quit leader q
vim.keymap.set("n", "<leader>q", ':q<cr>')

--tabs
vim.keymap.set("n", "<C-t>", vim.cmd.tabnew)
vim.keymap.set("n", "<S-l>", "gt")
vim.keymap.set("n", "<S-h>", "gT")

vim.keymap.set("n", "<Return>", "A<Return><Esc>")


--vim.api.nvim_set_keymap('n', '<leader>c', '<Plug>OSCYankOperator', {})
--vim.api.nvim_set_keymap('n', '<leader>cc', '<leader>c_', {})
vim.api.nvim_set_keymap('v', '<leader>y', '<Plug>OSCYankVisual', {})

