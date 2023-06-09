vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", '<Esc>')


-- %% will expand on command line to the current file's directory
vim.api.nvim_set_keymap('c', '%%', '<C-R>=expand(\'%:h\').\'/\'<CR>', {noremap = true})
-- can't get this to work with :edit %% it just inserts the chars
vim.keymap.set("n", "<leader>e", ':edit <C-R>=expand(\'%:h\').\'/\'<CR>')


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
 
--apply macros with Q
vim.api.nvim_set_keymap('n', 'Q', '@q', {noremap = true})
vim.api.nvim_set_keymap('v', 'Q', ':norm @q<CR>', {noremap = true})

--open splits and switch
vim.keymap.set("n", "<leader>w", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>s<C-w>j")

-- hashrocket shortcut
vim.keymap.set("i", "<c-l>", "<space>=><space>")


-- Define the mapping
vim.api.nvim_set_keymap('v', '<leader>c', ':OSCYank<CR>', { noremap = true })

--vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
--vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)
-- vim.keymap.set('v', '<leader>y', '<Plug>OSCYankVisual')
vim.keymap.set('n', '<leader>y', ':ChatGPT<CR>')


-- Now the '+' register will copy to system clipboard using OSC52
-- vim.keymap.set('n', '<leader>c', '"+y' y)
-- vim.keymap.set('n', '<leader>cc', '"+yy')
