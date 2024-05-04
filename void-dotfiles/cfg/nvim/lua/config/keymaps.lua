-------------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ============= Basic Keymaps =============
local bind = vim.keymap.set
local opts = { noremap = true, silent = true }
bind("n", ";", ":")
bind("n", "U", "<C-r>", opts)
bind("v", ";", ":", opts)
bind("c", "W", "w", opts)
bind("c", "WQ", "wq", opts)
bind("c", "Wq", "wq", opts)
bind("c", "QA", "qa", opts)
-- do not copy delete and change command
-- bind("n", "d", [["_d]], opts)
-- bind("v", "d", [["_d]], opts)
-- bind("n", "c", [["_c]], opts)
-- bind("v", "c", [["_c]], opts)
bind("n", "<C-o>", "<C-o>zz", opts)
bind("n", "<C-i>", "<C-i>zz", opts)
bind("n", "H", "g^", opts)
bind("n", "L", "g_", opts)
bind("v", "H", "g^", opts)
bind("v", "L", "g_", opts)
bind("n", "k", "gk", opts)
bind("n", "j", "gj", opts)
bind("v", "<tab>", "<S->>gv", opts)
bind("v", "<S-tab>", "<S-<>gv", opts)
bind("n", "<C-left>", "<CMD>bp<CR>", opts)
bind("n", "<C-right>", "<CMD>bn<CR>", opts)
bind("n", "<C-t>", "<CMD>tabnew<CR>", opts)
bind("n", "<C-t>", "<Esc><CMD>tabnew<CR>", opts)
bind("n", "<ESC>", "<CMD>noh<CR>", opts)
bind("n", "<leader>0", "<CMD>tablast<CR>", opts)
bind("n", "<leader>dd", ":%bdelete<CR>", opts)
-- copy to system clipboard
bind("n", "<C-c>", '"+y', opts)
bind("n", "<C-h>", "<C-w>h", opts)
bind("n", "<C-j>", "<C-w>j", opts)
bind("n", "<C-k>", "<C-w>k", opts)
bind("n", "<C-l>", "<C-w>l", opts)
bind("n", "<C-q>", "<C-w>q", opts)
bind("n", "<C-\\>", "<C-w><bar>", opts)
-- Auto indent pasted text
bind("n", "p", "]p", opts)
bind("n", "P", "[p", opts)
bind("n", "(", "%", opts)
bind("n", ", opts)", "%", opts)
-- turn off direction keyboard, force yourself use `hjkl` !!!
bind("n", "<Left>", "<Nop>", opts)
bind("n", "<Right>", "<Nop>", opts)
bind("n", "<Up>", "<Nop>", opts)
bind("n", "<Down>", "<Nop>", opts)
-- tab quick swich
bind("n", "<leader>th", "<CMD>tabfirst<CR>", opts)
bind("n", "<leader>tl", "<CMD>tablast<CR>", opts)
bind("n", "<leader>tj", "<CMD>tabnext<CR>", opts)
bind("n", "<leader>tk", "<CMD>tabprev<CR>", opts)
bind("n", "<leader>tn", "<CMD>tabnext<CR>", opts)
bind("n", "<leader>tp", "<CMD>tabprev<CR>", opts)
bind("n", "<leader>te", "<CMD>tabedit<CR>", opts)
bind("n", "<leader>td", "<CMD>tabclose<CR>", opts)
bind("n", "<leader>tm", "<CMD>tabm<CR>", opts)
-- select all text
bind("n", "<M-a>", "ggVG", opts)
