-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local bind = vim.keymap.set
local opts = { noremap = true, silent = true }
-----------------------------------------------------------
-- Basic Keymaps:
-----------------------------------------------------------
bind("n", ";", ":")
bind("n", "U", "<C-r>", opts)
bind("v", ";", ":", opts)
bind("c", "W", "w", opts)
bind("c", "WQ", "wq", opts)
bind("c", "Wq", "wq", opts)
bind("c", "QA", "qa", opts)
bind("c", "wA!", "wqa", opts)
-----------------------------------------------------------
-- turn off direction keyboard, force using `hjkl` !!!
-----------------------------------------------------------
bind("n", "<Left>", "<Nop>", opts)
bind("n", "<Right>", "<Nop>", opts)
bind("n", "<Up>", "<Nop>", opts)
bind("n", "<Down>", "<Nop>", opts)
