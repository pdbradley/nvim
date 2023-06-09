require("pdbradley")


vim.cmd([[
  augroup RubySyntax
    autocmd!
    autocmd BufRead,BufNewFile *.rb set syntax=ruby
  augroup END
]])

-- Define a new filetype for .inky-slim files
vim.cmd("autocmd BufNewFile,BufRead *.inky-slim set filetype=slim")




-- not necessary
--vim.o.clipboard = "unnamedplus"
--
vim.g.dbsyntax_treesitter_sql = 1

vim.g.dbs_ui_popup_maxheight = 80

vim.opt.previewheight = 30
