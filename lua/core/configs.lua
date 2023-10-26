-- [[ Setting options ]]
local options = {
  backup = false,                          -- creates a backup file
  breakindent = true,                      -- indent line wraps
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  expandtab = true,                        -- convert tabs to spaces
  fileencoding = "utf-8",                  -- the encoding written to a file
  foldexpr = "nvim_treesitter#foldexpr()",
  guifont = "monospace:h17", -- the font used in graphical neovim applications
  hlsearch = true,           -- highlight all matches on previous search pattern
  ignorecase = true,         -- ignore case in search patterns
  mouse = "a",               -- allow the mouse to be used in neovim
  number = true,             -- set numbered lines
  numberwidth = 4,           -- set number column width to 2 {default 4}
  pumheight = 10,            -- pop up menu height
  relativenumber = true,     -- set relative numbered lines
  scrolloff = 8,             -- is one of my fav
  shiftwidth = 4,            -- the number of spaces inserted for each indentation
  showmode = false,          -- we don't need to see things like -- INSERT -- anymore
  sidescrolloff = 8,
  smartcase = true,          -- smart case
  smartindent = true,        -- make indenting smarter again
  splitbelow = true,         -- force all horizontal splits to go below current window
  splitright = true,         -- force all vertical splits to go to the right of current window
  swapfile = false,          -- creates a swapfile
  tabstop = 4,               -- insert 2 spaces for a tab
  termguicolors = true,      -- set term gui colors (most terminals support this)
  timeoutlen = 500,          -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,           -- enable persistent undo
  updatetime = 300,          -- faster completion (4000ms default)
  wrap = true,               -- display lines as one long line
  writebackup = false,       -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

-- Iterate over options and set them
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Fillchars
vim.opt.fillchars = {
   vert = "│",
   fold = "⠀",
   eob = " ", -- suppress ~ at EndOfBuffer
   diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
   msgsep = "‾",
   foldopen = "▾",
   foldsep = "│",
   foldclose = "▸"
}

vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])
