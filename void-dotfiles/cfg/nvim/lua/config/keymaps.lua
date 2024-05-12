-------------------------------------------------------------
-- Define keymaps:
-----------------------------------------------------------
-- Change leader to a Space
vim.g.mapleader = " "
-- Basic Keymaps
local bind = vim.keymap.set
local opts = { noremap = true, silent = true }
bind("n", ";", ":")
bind("n", "U", "<C-r>", opts)
bind("v", ";", ":", opts)
bind("c", "W", "w", opts)
bind("c", "WQ", "wq", opts)
bind("c", "Wq", "wq", opts)
bind("c", "QA", "qa", opts)
bind("n", "<ESC>", "<CMD>noh<CR>", opts)
bind("n", "<leader>bd", ":%bdelete<CR>", opts)
-- copy to system clipboard
bind("n", "<C-c>", '"+y', opts)
bind("n", "<C-h>", "<C-w>h", opts)
bind("n", "<C-j>", "<C-w>j", opts)
bind("n", "<C-k>", "<C-w>k", opts)
bind("n", "<C-l>", "<C-w>l", opts)
bind("n", "<C-q>", "<C-w>q", opts)
-- turn off direction keyboard, force yourself use `hjkl` !!!
bind("n", "<Left>", "<Nop>", opts)
bind("n", "<Right>", "<Nop>", opts)
bind("n", "<Up>", "<Nop>", opts)
bind("n", "<Down>", "<Nop>", opts)
