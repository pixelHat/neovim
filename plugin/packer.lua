vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-treesitter-textobjects")

	-- manson
	use({
		-- "williamboman/mason.nvim",
		-- "williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"mhartington/formatter.nvim",
	})

	-- testing integration
	use("vim-test/vim-test")
	use("tpope/vim-dispatch")

	-- themes
	use("arcticicestudio/nord-vim")
	use("savq/melange")
	use("projekt0n/github-nvim-theme")
	use("Shatur/neovim-ayu")
	use({
		"olivercederborg/poimandres.nvim",
		config = function()
			require("poimandres").setup({})
		end,
	})
	use("JoosepAlviste/palenightfall.nvim")

	-- git integration
	-- use("airblade/vim-gitgutter")
	use("tpope/vim-fugitive")

	-- autocomplete
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")

	-- " Telescope
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")

	-- others
	use("tpope/vim-surround")
	use("AndrewRadev/tagalong.vim")
	-- use("mattn/emmet-vim")
	-- use("beauwilliams/statusline.lua")
	use("mfussenegger/nvim-dap")
	use("numToStr/Comment.nvim")
	-- use("easymotion/vim-easymotion")

	-- languages
	use("elkowar/yuck.vim")
	use("digitaltoad/vim-pug")

	-- sourcegraph
	-- use({ "sourcegraph/sg.nvim", run = "nvim -l build/init.lua" })

	-- codeium
	-- use({ "Exafunction/codeium.vim" })

	-- ruby
	use({ "onsails/lspkind.nvim" })

	-- web
	use({ "windwp/nvim-ts-autotag" })

	use({ "ollykel/v-vim" })

	use({ "jmbuhr/otter.nvim" })
	use({ "quarto-dev/quarto-nvim" })

	-- Packer
	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup()
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	use({
		"folke/which-key.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})
end)
