local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{ "nvim-lua/plenary.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{ "nvim-treesitter/nvim-treesitter" },

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				automatic_installation = true,
				ui = { border = "rounded" },
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({})
		end,
	},
	{ "neovim/nvim-lspconfig" },
	{ "kabouzeid/nvim-lspinstall" },
	{
		"linrongbin16/lsp-progress.nvim",
		event = { "VimEnter" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lsp-progress").setup()
		end,
	},

	{ "shaunsingh/nord.nvim" },
	{ "techtuner/aura-neovim" },
	{ "lunarvim/horizon.nvim" },
	{ "bluz71/vim-moonfly-colors" },
	{ "folke/tokyonight.nvim" },

	{
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", "linrongbin16/lsp-progress.nvim", opt = true },
	},

	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
		end,
	},

	{ "norcalli/nvim-colorizer.lua" },

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},

	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },

	{ "lewis6991/gitsigns.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{ "RRethy/vim-illuminate" },
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"folke/flash.nvim",
		config = function()
			require("flash").setup({})
		end,
	},
	{
		"alvan/vim-closetag",
	},
	{ "mfussenegger/nvim-dap" },
	{
		"mfussenegger/nvim-dap-python",
		config = function()
			require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap" },
		config = function()
			require("dapui").setup()
		end,
	},
	-- {
	-- 	"nvimdev/lspsaga.nvim",
	-- 	config = function()
	-- 		require("lspsaga").setup({})
	-- 	end,
	-- 	dependencies = {
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		"nvim-tree/nvim-web-devicons",
	-- 	},
	-- },
	{ "kkoomen/vim-doge" },
	{ "folke/which-key.nvim" },
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{ "sainnhe/gruvbox-material" },
	-- { "tmhedberg/SimpylFold" },
}, {
	ui = { border = "rounded" },
})
