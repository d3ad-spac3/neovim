require("core.plugins")
require("core.configs")

require("colorizer").setup()
require("plugins.lsp_config")
require("plugins.lualine")
require("plugins.neotree")
require("plugins.treesitter")
require("plugins.cmp")
require("plugins.gitsigns")
require("plugins.null_ls")
require("plugins.illuminate")
require("plugins.bufferline")

require("core.mappings")

vim.opt.termguicolors = true
vim.cmd.colorscheme("tokyonight-night")
-- vim.cmd.colorscheme("horizon")
-- vim.cmd.colorscheme("aura")
-- vim.cmd.colorscheme("nord")

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

vim.cmd([[call doge#install()]])
