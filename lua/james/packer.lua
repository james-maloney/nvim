vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		'andersevenrud/nordic.nvim',
	}

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = true,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
				}
		end
	})

	use {
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup {}
		end
	}

	use("theprimeagen/harpoon")

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use("mbbill/undotree")
	use("tpope/vim-fugitive")

	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
		end
	})

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

	use {
		'nmac427/guess-indent.nvim',
		config = function() require('guess-indent').setup {} end,
	}

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}


	-- use {
	-- 	'nvim-tree/nvim-tree.lua',
	-- 	requires = {
	-- 		'nvim-tree/nvim-web-devicons', -- optional, for file icons
	-- 	},
	-- 	tag = 'nightly' -- optional, updated every week. (see issue #1193)
	-- }

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

end)

