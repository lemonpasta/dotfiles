vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use("kyazdani42/nvim-web-devicons")
    use("kyazdani42/nvim-tree.lua")
    use("vim-airline/vim-airline")
    use("vim-airline/vim-airline-themes")
    use("ctrlpvim/ctrlp.vim")
    use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
    use("nvim-treesitter/playground")
    use("EdenEast/nightfox.nvim")
    use("neovim/nvim-lspconfig")
    use("williamboman/nvim-lsp-installer")
    use("nvim-lua/lsp-status.nvim")
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")
    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        {
            ["do"] = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
        },
    })
    use("hrsh7th/nvim-cmp")
    use("saadparwaiz1/cmp_luasnip")
    use("L3MON4D3/LuaSnip")
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")
    use("jose-elias-alvarez/null-ls.nvim")
    use("hrsh7th/cmp-nvim-lsp")
    use("nvim-lua/popup.nvim")
    use("jvgrootveld/telescope-zoxide")
    use("bkad/CamelCaseMotion")
    use({ "glepnir/lspsaga.nvim", { branch = "main" } })
    use("nanozuki/tabby.nvim")
    use("tpope/vim-surround")
    use("tpope/vim-fugitive")
    use("ggandor/leap.nvim")
    use("feline-nvim/feline.nvim")
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
                current_line_blame_opts = {
                    delay = 300,
                },
            })
        end,
    })
end)
