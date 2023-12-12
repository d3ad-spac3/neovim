vim.g.mapleader = " "

vim.keymap.set("n", "<c-k>", "<c-w>k")
vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-l>", "<c-w>l")
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")
vim.keymap.set("v", "<leader>/", ":'<,'>CommentToggle<CR>")

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.keymap.set("n", "<leader>e", ":Neotree toggle left<CR>")

vim.keymap.set("n", "<leader>be", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>bj", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>bc", ":BufferLineCloseOthers<CR>")

vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>ds", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>di", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>do", ":DapStepOver<CR>")
vim.keymap.set("n", "<leader>du", ":lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<leader>dq", ":DapTerminate<CR>")

vim.cmd([[Gitsigns toggle_current_line_blame]])

vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>gR", ":Gitsigns reset_buffer<CR>")
vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<leader>gS", ":Gitsigns stage_buffer<CR>")
vim.keymap.set("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>")
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("v", "<C-v>", '"+p')
vim.keymap.set("i", "<C-v>", '<esc>"+pa')

vim.keymap.set("n", "gp", ":DogeGenerate numpy<CR>")

vim.keymap.set("n", "<C-A-k>", "<C-w>+")
vim.keymap.set("n", "<C-A-j>", "<C-w>-")
vim.keymap.set("n", "<C-A-h>", "<C-w><")
vim.keymap.set("n", "<C-A-l>", "<C-w>>")
