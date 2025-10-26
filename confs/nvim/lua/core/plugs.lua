require("lazy").setup({
	spec = {
		{
			{
				"nvim-neo-tree/neo-tree.nvim",
				branch = "v3.x",
				dependencies = {
					"nvim-lua/plenary.nvim",
					"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
					"MunifTanjim/nui.nvim",
					-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
				},
				lazy = false, -- neo-tree will lazily load itself
				---@module "neo-tree"
				---@type neotree.Config?
			}
		},
		{ "Mofiqul/dracula.nvim", "Luxed/ayu-vim", "ayu-theme/ayu-vim", "Shatur/neovim-ayu", "ellisonleao/gruvbox.nvim", "shaunsingh/nord.nvim" },
		{ "neovim/nvim-lspconfig", "stevearc/conform.nvim" },
		{ "nvim-treesitter/nvim-treesitter", "norcalli/nvim-colorizer.lua" },
		{
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",

			"hrsh7th/cmp-vsnip",
			"hrsh7th/vim-vsnip",

			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip"
		},
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = function()
				require("nvim-autopairs").setup {}
			end
		},
		{
			'nvim-lualine/lualine.nvim',
			dependencies = { 'nvim-tree/nvim-web-devicons' }
		},
		{ "williamboman/mason.nvim",      "williamboman/mason-lspconfig.nvim" },
		{ "nvim-telescope/telescope.nvim" },
		{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
		{ "rust-lang/rust.vim" },
	},
})
