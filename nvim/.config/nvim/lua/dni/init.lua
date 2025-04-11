require("dni.set")
require("dni.keymap")
require("dni.packer")
require("dni.telescope")

local theme = "gruvbox"

-- disable copilot on default re-enable with <F12>

vim.cmd("colorscheme " .. theme)
-- adds transparency to the background
vim.cmd("hi normal guibg=NONE ctermbg=NONE")
-- fixes airline
vim.cmd("hi statusline cterm=NONE gui=NONE")
vim.cmd("hi statuslinenc cterm=NONE gui=NONE")
vim.cmd("hi tabline cterm=NONE gui=NONE")
vim.cmd("hi winbar cterm=NONE gui=NONE")
-- make clipboard work on system clipboard
vim.cmd("set clipboard=unnamedplus")

-- remove trailing spaces on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.vimspector_base_dir='~/.local/share/nvim/site/pack/packer/start/vimspector'
