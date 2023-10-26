vim.g.mapleader = " "

vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

vim.keymap.set('n', '<c-k>', '<c-w>k')
vim.keymap.set('n', '<c-j>', '<c-w>j')
vim.keymap.set('n', '<c-h>', '<c-w>h')
vim.keymap.set('n', '<c-l>', '<c-w>l')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')
vim.keymap.set('v', '<leader>/', ":'<,'>CommentToggle<CR>")

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
