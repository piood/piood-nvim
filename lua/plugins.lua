return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- gruvbox theme
	use({
		"ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" },
	})
	-- nord theme
	use("shaunsingh/nord.nvim")
	-- zephyr theme
	use("glepnir/zephyr-nvim")

	-- nvim-tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = "nvim-tree/nvim-web-devicons",
	})

	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- mason
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })

	-- lspconfig
	use({ "neovim/nvim-lspconfig" })

	-- nvim-cmp
	use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
	use("hrsh7th/cmp-buffer") -- { name = 'buffer' }
	use("hrsh7th/cmp-path") -- { name = 'path' }
	use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
	use("hrsh7th/nvim-cmp")
	-- vsnip
	use("hrsh7th/cmp-vsnip") -- { name = 'vsnip'}
	use("hrsh7th/vim-vsnip")
	use("rafamadriz/friendly-snippets")
	-- lspkind
	use("onsails/lspkind-nvim")

	-- null-ls
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup()
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Comment
	use({
		"numTostr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
  
  -- yati
  use( {"yioneko/nvim-yati", tag="*", requires = "nvim-treesitter/nvim-treesitter"})

  -- osc
  use ("ojroques/vim-oscyank")
end)
