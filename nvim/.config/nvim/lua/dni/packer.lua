vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")

    -- TJ created lodash of neovim
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    -- Simple plugins can be specified as strings
    use("TimUntersberger/neogit")

    use {'neoclide/coc.nvim', branch = 'release'}

    -- All the things
    use("neovim/nvim-lspconfig")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- dni
    use ("xolox/vim-misc")
    use ("xolox/vim-easytags")
    use ("preservim/tagbar")
    use ("mbbill/undotree")

    use ("puremourning/vimspector")
    use ("tpope/vim-fugitive")
    use ("tpope/vim-surround")
    use ("tpope/vim-commentary")
    use ("vim-airline/vim-airline")
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use ("vim-python/python-syntax")
    use ("mattn/emmet-vim")
    use ("github/copilot.vim")
end)
