return {
	-- the colorscheme should be available when starting Neovim
	{
		"gruvbox-community/gruvbox",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme gruvbox]])
		end,
	},

	{ "nvim-lua/plenary.nvim", lazy = false },
	{ "nvim-lua/popup.nvim", lazy = false },

	-- use("TimUntersberger/neogit")

	-- use {'ziglang/zig.vim'}
	-- use {'neoclide/coc.nvim', branch = 'release'}

	{ "neovim/nvim-lspconfig" },
    { "preservim/tagbar" },
    { "mbbill/undotree" },
    { "puremourning/vimspector" },
    -- { "sagi-z/vimspectorpy", run = "VimspectorpyUpdate" }
    --
    -- { "nvim-tree/nvim-web-devicons" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-surround" },
    { "tpope/vim-commentary" },
    -- use ("vim-python/python-syntax")
    { "mattn/emmet-vim" },
	{ "github/copilot.vim" }

    -- airline
    {
        "vim-airline/vim-airline",
        config = function()
            vim.cmd("hi statusline cterm=NONE gui=NONE")
            vim.cmd("hi statuslinenc cterm=NONE gui=NONE")
            vim.cmd("hi tabline cterm=NONE gui=NONE")
            vim.cmd("hi winbar cterm=NONE gui=NONE")
        end
    },
    { "vim-airline/vim-airline-themes" },

}
