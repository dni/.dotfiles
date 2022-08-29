local Remap = require("dni.keymap")
local nnoremap = Remap.nnoremap

--nnoremap("<C-p>", ":Telescope")

nnoremap("<C-p>", function()
    require('telescope.builtin').find_files()
end)
nnoremap("<Leader>pg", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<leader>pf", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>pb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>vh", function()
    require('telescope.builtin').help_tags()
end)
