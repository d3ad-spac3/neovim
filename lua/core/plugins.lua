local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    { "nvim-lua/plenary.nvim" },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { 'nvim-treesitter/nvim-treesitter' },

    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                automatic_installation = true,
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({})
        end
    },
    { "neovim/nvim-lspconfig", },
    { "kabouzeid/nvim-lspinstall", },

    { 'shaunsingh/nord.nvim' },
    { 'techtuner/aura-neovim' },
    { "lunarvim/horizon.nvim" },
    { "bluz71/vim-moonfly-colors" },
    { "folke/tokyonight.nvim" },

    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    },

    {
        'terrortylor/nvim-comment',
        config = function()
            require("nvim_comment").setup()
        end
    },

    { 'norcalli/nvim-colorizer.lua' },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          "s1n7ax/nvim-window-picker",
        }
    },

    {
        'L3MON4D3/LuaSnip',
        version = "v2.*",
        build = "make install_jsregexp"
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'saadparwaiz1/cmp_luasnip' },

    { "lewis6991/gitsigns.nvim" },
})
