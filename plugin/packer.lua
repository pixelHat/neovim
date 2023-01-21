vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-treesitter-textobjects")

	-- manson
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
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

	-- git integration
	use("airblade/vim-gitgutter")
	use("tpope/vim-fugitive")

	-- autocomplete
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")

	-- " Telescope
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")

	-- others
	use("tpope/vim-surround")
	use("AndrewRadev/tagalong.vim")
	use("mattn/emmet-vim")
	use("beauwilliams/statusline.lua")
	use("mfussenegger/nvim-dap")
	use("numToStr/Comment.nvim")
	use("easymotion/vim-easymotion")
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})

	-- languages
	use("elkowar/yuck.vim")
	use("digitaltoad/vim-pug")
end)
