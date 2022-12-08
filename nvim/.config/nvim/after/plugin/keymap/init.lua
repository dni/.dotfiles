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
nnoremap("<leader>cr", ":CocRestart<CR>")
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

-- debugger
nnoremap("<leader>dd", ":call vimspector#Launch()<CR>")
nnoremap("<leader>dq", ":call vimspector#Reset()<CR>")

nnoremap("<leader>d<space>", ":call vimspector#Continue()<CR>")
nnoremap("<leader>dr", "<Plug>VimspectorRestart")

nnoremap("<leader>dh", "<Plug>VimspectorStepOver")
nnoremap("<leader>dj", "<Plug>VimspectorStepInto")
nnoremap("<leader>dk", "<Plug>VimspectorStepOut")
nnoremap("<leader>dl", "<Plug>VimspectorRunToCursor")

nnoremap("<leader>db", "<Plug>VimspectorToggleBreakpoint")
nnoremap("<leader>dbc", "<Plug>VimspectorToggleConditionalBreakpoint")

nnoremap("<leader>dc", ":call win_gotoid(g:vimspector_session_windows.code)<CR>")
nnoremap("<leader>dt", ":call win_gotoid(g:vimspector_session_windows.tagpage)<CR>")
nnoremap("<leader>dv",  ":call win_gotoid(g:vimspector_session_windows.variables)<CR>")
nnoremap("<leader>dw", ":call win_gotoid(g:vimspector_session_windows.watches)<CR>")
nnoremap("<leader>ds", ":call win_gotoid(g:vimspector_session_windows.stack_trace)<CR>")
nnoremap("<leader>do", ":call win_gotoid(g:vimspector_session_windows.output)<CR>")
