--vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true })

vim.keymap.set('n', '<C-p>', function()
    require('telescope.builtin').find_files({ hidden = true })
end,  { noremap = true })

vim.keymap.set('n', '<leader>pf', function()
    require('telescope.builtin').find_files({ hidden = true })
end,  { noremap = true })

vim.keymap.set('n', '<C-g>', function()
    require('telescope.builtin').live_grep({ hidden = true })
end,  { noremap = true })

vim.keymap.set('n', '<leader>pg', function()
    require('telescope.builtin').git_files()
end,  { noremap = true })

vim.keymap.set('n', '<C-f>', function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end,  { noremap = true })

vim.keymap.set('n', '<leader>pw', function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end,  { noremap = true })

vim.keymap.set('n', '<leader>pb', function()
    require('telescope.builtin').buffers()
end,  { noremap = true })

vim.keymap.set('n', '<C-b>', function()
    require('telescope.builtin').buffers()
end,  { noremap = true })

vim.keymap.set('n', '<leader>vh', function()
    require('telescope.builtin').help_tags()
end,  { noremap = true })
