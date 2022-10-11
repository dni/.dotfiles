local Remap = require("dni.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>f", ":Ex<CR>")
nnoremap("<leader><enter>", ":terminal<CR>")
nnoremap("<leader>t", ":TagbarToggle<CR>")
nnoremap("<leader>cc", ":CocCommand<CR>")
nnoremap("<leader>cl", ":CocDiagnostics<CR>")
nnoremap("<leader>cn", ":CocNext<CR>")
nnoremap("<leader>cf", ":CocFirst<CR>")

