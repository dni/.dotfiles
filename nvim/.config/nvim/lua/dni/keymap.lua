-- default keymaps
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>Q', '<cmd>qall!<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>f', '<cmd>Ex<cr>',  { noremap = true })
vim.keymap.set('n', '<leader><enter>', ':set splitbelow<CR> :split<CR> :terminal<CR> 10<C-w>_ i',  { noremap = true })
vim.keymap.set('n', '<leader>t', '<cmd>TagbarToggle<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<cr>',  { noremap = true })

-- function keys
vim.keymap.set('n', '<F1>', '<cmd>UndotreeToggle<cr>',  { noremap = true })
vim.keymap.set('n', '<F2>', ':GMove ',  { noremap = true })
vim.keymap.set('n', '<F3>', '<cmd>TagbarToggle<cr>',  { noremap = true })
vim.keymap.set('n', '<F4>', ':set splitbelow<CR> :split<CR> :terminal<CR> 10<C-w>_ i',  { noremap = true })
vim.keymap.set('n', '<m-F4>', '<cmd>qall!<cr>',  { noremap = true })
vim.keymap.set('n', '<F9>', '<cmd>Copilot panel<cr>',  { noremap = true })
vim.keymap.set('i', '<F10>', '<cmd>call copilot#Next()<cr>',  { noremap = true })
vim.keymap.set('i', '<F11>', '<cmd>call copilot#Previous()<cr>',  { noremap = true })
vim.keymap.set('n', '<F12>', '<cmd>Copilot enable<cr>',  { noremap = true })
vim.keymap.set('n', '<F5>', '<cmd>:luafile %<cr>',  { noremap = true })
vim.keymap.set('n', '<Esc>', '<cmd>q<cr>',  { noremap = true })

-- open / exit terminal mode
vim.keymap.set('t', '<F4>', '<C-\\><C-N><CR> :close<cr>',  { noremap = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-N><CR> :close<cr>',  { noremap = true })
-- navigate in terminal mode
vim.keymap.set('t', '<C-l>', '<C-\\><C-N><C-w><C-w>',  { noremap = true })
vim.keymap.set('t', '<C-h>', '<C-\\><C-N><C-w>h',  { noremap = true })
vim.keymap.set('t', '<C-k>', '<C-\\><C-N><C-w>k',  { noremap = true })
vim.keymap.set('t', '<C-j>', '<C-\\><C-N><C-w>j',  { noremap = true })

-- navigate through windows
vim.keymap.set('n', '<C-l>', '<C-w><C-w>',  { noremap = true })
vim.keymap.set('n', '<C-h>', '<C-w>h',  { noremap = true })
vim.keymap.set('n', '<C-k>', ':bnext<cr>',  { noremap = true })
vim.keymap.set('n', '<C-j>', ':bprevious<cr>',  { noremap = true })

-- splits
vim.keymap.set('n', '<enter>', ':vsplit<cr>',  { noremap = true })

-- transform splits
vim.keymap.set('n', '<C-M-h>', '<C-w>>',  { noremap = true })
vim.keymap.set('n', '<C-M-l>', '<C-w><',  { noremap = true })
vim.keymap.set('n', '<C-M-j>', '<C-w>+',  { noremap = true })
vim.keymap.set('n', '<C-M-k>', '<C-w>-',  { noremap = true })

-- maximize and minimize splits
vim.keymap.set('n', '<leader>m', '<C-w>_<C-w>|',  { noremap = true })
vim.keymap.set('n', '<leader>M', '<C-w>=>',  { noremap = true })

-- CoC commands
vim.keymap.set('n', '<leader>cc', '<cmd>CocCommand<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>cr', '<cmd>CocRestart<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>r', '<cmd>CocRestart<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>cl', '<cmd>CocDiagnostics<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>l', '<cmd>CocDiagnostics<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>cn', '<cmd>CocNext<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>n', '<cmd>CocNext<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>cf', '<cmd>CocFirst<cr>',  { noremap = true })

-- Fugitive commands
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>gd', '<cmd>Git diff<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>gm', '<cmd>GMove',  { noremap = true })
-- Fugitive conflict resolution
vim.keymap.set('n', '<leader>gs', '<cmd>Gvdiffsplit!<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>gh', '<cmd>diffget //2<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>gl', '<cmd>diffget //3<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>gu', '<cmd>diffupdate<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>gw', '<cmd>Gwrite!<cr>',  { noremap = true })

-- vimspector
vim.keymap.set('n', '<leader>dd', '<cmd>call vimspector#Launch()<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>dq', '<cmd>call vimspector#Reset()<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>d<space>', '<cmd>call vimspector#Continue()<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>dr', '<Plug>VimspectorRestart',  { noremap = true })
vim.keymap.set('n', '<leader>dh', '<Plug>VimspectorStepOver',  { noremap = true })
vim.keymap.set('n', '<leader>dj', '<Plug>VimspectorStepInto',  { noremap = true })
vim.keymap.set('n', '<leader>dk', '<Plug>VimspectorStepOut',  { noremap = true })
vim.keymap.set('n', '<leader>dl', '<Plug>VimspectorRunToCursor',  { noremap = true })
vim.keymap.set('n', '<leader>db', '<Plug>VimspectorToggleBreakpoint',  { noremap = true })
vim.keymap.set('n', '<leader>dbc', '<Plug>VimspectorToggleConditionalBreakpoint',  { noremap = true })
-- vimspector windows
vim.keymap.set('n', '<leader>dc', '<cmd>call win_gotoid(g:vimspector_session_windows.code)<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>dt', '<cmd>call win_gotoid(g:vimspector_session_windows.tagpage)<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>dv', '<cmd>call win_gotoid(g:vimspector_session_windows.variables)<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>dw', '<cmd>call win_gotoid(g:vimspector_session_windows.watches)<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>ds', '<cmd>call win_gotoid(g:vimspector_session_windows.stack_trace)<cr>',  { noremap = true })
vim.keymap.set('n', '<leader>do', '<cmd>call win_gotoid(g:vimspector_session_windows.output)<cr>',  { noremap = true })
