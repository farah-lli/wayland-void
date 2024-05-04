-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Folds
vim.opt.foldcolumn = "0" -- '0' is not bad
vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.shortmess = vim.opt.shortmess + {
  s = true, -- No search top bottom msgs
  I = true, -- No intro msg
}
-- Indent
vim.opt.autoindent = true -- Copy indent from current line when starting a new line (When <CR> or 'o' or 'O')
vim.opt.smarttab = true -- When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'
