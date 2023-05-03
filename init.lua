require("pdbradley")


vim.cmd([[
  augroup RubySyntax
    autocmd!
    autocmd BufRead,BufNewFile *.rb set syntax=ruby
  augroup END
]])

-- Define a new filetype for .inky-slim files
vim.cmd("autocmd BufNewFile,BufRead *.inky-slim set filetype=slim")





