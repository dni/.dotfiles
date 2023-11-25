require("dni.set")
require("dni.packer")
require("dni.telescope")

vim.cmd("colorscheme gruvbox")
vim.cmd("hi normal guibg=NONE ctermbg=NONE")
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
vim.g.vimspector_base_dir='/home/dni/.local/share/nvim/site/pack/packer/start/vimspector'
