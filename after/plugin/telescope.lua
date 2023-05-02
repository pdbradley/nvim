local function is_telescope_open()
  local has_telescope, telescope = pcall(require, "telescope")
  if not has_telescope then return false end
  return telescope.state.get_status().prompt_win
end

local function telescope_ctrl_p()
  if is_telescope_open() then
    local has_telescope, telescope = pcall(require, "telescope")
    if has_telescope then
      telescope.actions.cycle_history_prev(telescope.state.get_status().picker)
    end
  else
    -- Your other Ctrl-P mapping action goes here, e.g., if you had the following mapping:
    -- vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
    -- Then you would call `vim.cmd(':Files')` here.
    telescope.builtin.git_files()
  end
end

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>a', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
