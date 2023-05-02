require("pdbradley")


vim.cmd([[
  augroup RubySyntax
    autocmd!
    autocmd BufRead,BufNewFile *.rb set syntax=ruby
  augroup END
]])

-- Define a new filetype for .inky-slim files
vim.cmd("autocmd BufNewFile,BufRead *.inky-slim set filetype=slim")

-- Disable matchit mappings for Ruby classes
-- vim.g.matchit_ruby_no_class_maps = 1

-- Enable longer mapping for jumping to end of Rails block
-- vim.g.matchit_rails_enable_shortcuts = 1

--  autocmd FileType ruby nnoremap <buffer> % <Plug>(rails-match-end)
