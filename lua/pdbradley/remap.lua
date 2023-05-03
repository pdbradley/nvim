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
 
--apply macros with Q
vim.api.nvim_set_keymap('n', 'Q', '@q', {noremap = true})
vim.api.nvim_set_keymap('v', 'Q', ':norm @q<CR>', {noremap = true})

--open splits and switch
vim.keymap.set("n", "<leader>w", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>s<C-w>j")

-- hashrocket shortcut
vim.keymap.set("i", "<c-l>", "<space>=><space>")



--vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
--vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
--vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)
vim.keymap.set('v', '<leader>y', '<Plug>OSCYankVisual')


local function copy(lines, _)
  require('osc52').copy(table.concat(lines, '\n'))
end

local function paste()
  return {vim.fn.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('')}
end

vim.g.clipboard = {
  name = 'osc52',
  copy = {['+'] = copy, ['*'] = copy},
  paste = {['+'] = paste, ['*'] = paste},
}

-- Now the '+' register will copy to system clipboard using OSC52
-- vim.keymap.set('n', '<leader>c', '"+y')
-- vim.keymap.set('n', '<leader>cc', '"+yy')
