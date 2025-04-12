vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- netrw config
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- python
vim.g.python_highlight_all = 1
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.vimspector_base_dir='~/.local/share/nvim/site/pack/packer/start/vimspector'

vim.g['airline#extensions#tagbar#enabled'] = true
vim.g['airline#extensions#tabline#enabled'] = true
vim.g['airline#extensions#tabline#formatter '] = 'short_path'
vim.g.airline_powerline_fonts = 1

-- disable copilot on default re-enable with <F12>
vim.g.copilot_enabled = 0

-- opt
vim.opt.nu = true
vim.opt.relativenumber = true

--only show 1 status line for all windows
vim.opt.laststatus = 3

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50
