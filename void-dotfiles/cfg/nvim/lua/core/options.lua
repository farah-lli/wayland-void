-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------
local opt = vim.opt -- Set options (global/buffer/windows-scoped)
-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.background = "light" -- or "light" for light mode
opt.termbidi = true -- For writing in right to left languages like arabic
opt.mouse = "a" -- Enable mouse support
opt.clipboard = "unnamedplus" -- Copy/paste to system clipboard
opt.swapfile = false -- Don't use swapfile
opt.undofile = true -- disabled persistent undo
opt.completeopt = "menuone,noinsert,noselect" -- Autocomplete options
-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true -- Show line number
opt.relativenumber = true -- Show line number Reversed
opt.numberwidth = 4 -- Show line number
opt.cursorline = true -- highlight current line
opt.showmatch = true -- Highlight matching parenthesis
opt.foldmethod = "marker" -- Enable folding (default 'foldmarker')
opt.colorcolumn = "120" -- Line lenght marker at 80 columns
opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom
opt.ignorecase = true -- Ignore case letters when search
opt.smartcase = true -- Ignore lowercase for the whole pattern
opt.linebreak = true -- Wrap on word boundary
opt.wrap = false -- Don't wrap Line
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.showmode = false -- Disbaled [ Mode ] In Status Line
opt.laststatus = 3 -- Set global statusline
-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- Autoindent new lines
-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history
opt.lazyredraw = false -- Faster scrolling
opt.synmaxcol = 240 -- Max column for syntax highlight
opt.updatetime = 250 -- ms to wait for trigger an event
