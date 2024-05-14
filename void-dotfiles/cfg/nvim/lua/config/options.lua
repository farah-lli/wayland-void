-------------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-----------------------------------------------------------
-- Set leader key:
-----------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-----------------------------------------------------------
-- Code folding options:
-----------------------------------------------------------
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4 -- Shift 4 spaces when tab
vim.opt.tabstop = 4 -- 1 tab == 4 spaces
vim.opt.smartindent = true -- Autoindent new lines
