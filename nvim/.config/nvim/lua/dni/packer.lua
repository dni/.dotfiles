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



    -- All the things
    use("neovim/nvim-lspconfig")
    -- use("hrsh7th/cmp-nvim-lsp")
    -- use("hrsh7th/cmp-buffer")
    -- use("hrsh7th/nvim-cmp")
    -- use("tzachar/cmp-tabnine", { run = "./install.sh" })
    -- use("onsails/lspkind-nvim")
    -- use("nvim-lua/lsp_extensions.nvim")
    -- use("glepnir/lspsaga.nvim")
    -- use("simrat39/symbols-outline.nvim")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")

    -- use("nvim-treesitter/nvim-treesitter", {
    --     run = ":TSUpdate"
    -- })

    -- dni
    use ("vim-airline/vim-airline")
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
end)
