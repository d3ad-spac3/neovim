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
require("plugins.whichkey")

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

if vim.g.neovide then
	vim.o.guifont = "FiraCode NerdFont:h13"
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_refresh_rate = 100
	vim.g.neovide_refresh_rate_idle = 100
	vim.g.neovide_no_idle = true
	vim.g.neovide_confirm_quit = false
	vim.g.neovide_fullscreen = false
	vim.g.neovide_remember_window_size = false
	vim.g.neovide_profiler = false
	vim.g.neovide_cursor_animation_length = 0.11
	vim.g.neovide_cursor_trail_size = 0.7
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_animate_in_insert_mode = true
	vim.g.neovide_cursor_animate_command_line = true
end
