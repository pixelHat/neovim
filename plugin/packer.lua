vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
    function(use)
        -- Packer can manage itself
        use "wbthomason/packer.nvim"
        use "nvim-treesitter/nvim-treesitter"
        use "nvim-treesitter/nvim-treesitter-textobjects"

        use "numToStr/Comment.nvim"

        use "easymotion/vim-easymotion"

        use "vim-test/vim-test"
        use "tpope/vim-dispatch"

        -- " theme
        use "arcticicestudio/nord-vim"
        -- use "ayu-theme/ayu-vim"
        use "savq/melange"
        -- use 'embark-theme/vim', { 'as': 'embark' }
        use "projekt0n/github-nvim-theme"
        use "Shatur/neovim-ayu"
        use {
            "olivercederborg/poimandres.nvim",
            config = function()
                require("poimandres").setup {}
            end
        }

        use "airblade/vim-gitgutter"
        use "tpope/vim-fugitive"

        use "digitaltoad/vim-pug"

        use "neovim/nvim-lsp"
        use "neovim/nvim-lspconfig"
        use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"

        use "sbdchd/neoformat"

        -- " Telescope
        use "nvim-lua/popup.nvim"
        use "nvim-lua/plenary.nvim"
        use "nvim-telescope/telescope.nvim"

        use "tpope/vim-surround"
        use "AndrewRadev/tagalong.vim"
        use "mattn/emmet-vim"

        use "beauwilliams/statusline.lua"
        use "mfussenegger/nvim-dap"

        use(
            {
                "jakewvincent/mkdnflow.nvim",
                rocks = "luautf8", -- Ensures optional luautf8 dependency is installed
                config = function()
                    require("mkdnflow").setup({})
                end
            }
        )
        use "jbyuki/nabla.nvim"
        use "elkowar/yuck.vim"
    end
)
