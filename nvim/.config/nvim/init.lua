require("config.set")
require("config.lazy")
require("config.keymap")

-- adds transparency to the background
vim.cmd("hi normal guibg=NONE ctermbg=NONE")
-- make clipboard work on system clipboard
vim.cmd("set clipboard=unnamedplus")
-- remove trailing spaces on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
