-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------
-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here---@diagnostic disable: param-type-mismatch
------------------------------------------------
-- Disable autoformat for some buffers:
------------------------------------------------
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "bash", "sh" },
  callback = function()
    vim.b.autoformat = false
  end,
})
------------------------------------------------
-- Disable AutoComment:
------------------------------------------------
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})
