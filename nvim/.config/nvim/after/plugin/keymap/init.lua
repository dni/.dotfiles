local Remap = require("dni.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>f", ":Ex<CR>")
nnoremap("<leader><enter>", ":terminal<CR>")
nnoremap("<leader>t", ":TagbarToggle<CR>")

-- coc binds
nnoremap("<leader>cc", ":CocCommand<CR>")
nnoremap("<leader>cr", ":CocReset<CR>")
nnoremap("<leader>cl", ":CocDiagnostics<CR>")
nnoremap("<leader>cn", ":CocNext<CR>")
nnoremap("<leader>cf", ":CocFirst<CR>")

-- navigate through windows
nnoremap("<C-l>", "<C-w><C-w>")
nnoremap("<C-h>", "<C-w>h")
-- navigate through buffers
nnoremap("<C-k>", ":bnext<cr>")
nnoremap("<C-j>", ":bprevious<cr>")

-- Fugitive Conflict Resolution
nnoremap("<leader>gd", ":Gvdiffsplit!<CR>")
nnoremap("<leader>gdh", ":diffget //2<CR>")
nnoremap("<leader>gdl", ":diffget //3<CR>")
nnoremap("<leader>gdu", ":diffupdate<CR>")
nnoremap("<leader>gdw", ":Gwrite!<CR>")
