vim.cmd([[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]])
vim.cmd([[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]])

local border = {
	{ "🭽", "FloatBorder" },
	{ "▔", "FloatBorder" },
	{ "🭾", "FloatBorder" },
	{ "▕", "FloatBorder" },
	{ "🭿", "FloatBorder" },
	{ "▁", "FloatBorder" },
	{ "🭼", "FloatBorder" },
	{ "▏", "FloatBorder" },
}

-- LSP settings (for overriding per client)
local handlers = {
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
}

-- Setup language servers.
local lspconfig = require("lspconfig")

lspconfig.pyright.setup({ handlers = handlers })
-- lspconfig.jedi_language_server.setup({ handlers = handlers })
lspconfig.gopls.setup({ handlers = handlers })
lspconfig.cssls.setup({ handlers = handlers })
lspconfig.html.setup({ handlers = handlers })
lspconfig.sqlls.setup({ handlers = handlers })
lspconfig.lua_ls.setup({ handlers = handlers })
lspconfig.dockerls.setup({ handlers = handlers })
lspconfig.yamlls.setup({ handlers = handlers })

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>ld", vim.diagnostic.open_float)
-- vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, opts)
		-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>lwa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<space>lwr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<space>lwl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<space>lr", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>la", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})
