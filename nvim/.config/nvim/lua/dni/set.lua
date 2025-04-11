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
--vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.g.python_highlight_all = 1

vim.g['airline#extensions#tagbar#enabled'] = true
vim.g['airline#extensions#tabline#enabled'] = true
vim.g['airline#extensions#tabline#formatter '] = 'short_path'
vim.g.airline_powerline_fonts = 1
