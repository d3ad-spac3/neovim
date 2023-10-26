require("core.plugins")
require("core.configs")

require("plugins.lsp_config")
require("plugins.lualine")
require("plugins.neotree")
require("plugins.treesitter")
require("plugins.cmp")
require("colorizer").setup()

require("core.mappings")

vim.opt.termguicolors = true
vim.cmd.colorscheme "tokyonight-night"
vim.cmd.colorscheme "horizon"
