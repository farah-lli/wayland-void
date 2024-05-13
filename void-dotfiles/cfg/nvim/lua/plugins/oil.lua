-----------------------------------------------------------
-- Oil
-----------------------------------------------------------
local M = {
  "stevearc/oil.nvim",
  enabled = true,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    { "SirZenith/oil-vcs-status" },
  },
  keys = {
    { "<leader>o", "<cmd>Oil --float<cr>", desc = "Oil" },
    { "<leader>fo", "<cmd>Oil<cr>", desc = "Oil" },
  },
}

function M.config()
  require("oil").setup({
    default_file_explorer = true,
    border = "rounded",
    win_options = {
      signcolumn = "yes:2",
    },
    float = {
      -- Padding around the floating window
      padding = 2,
      max_width = 0,
      max_height = 0,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
      progress = {
        max_width = 0.9,
        min_width = { 40, 0.4 },
        width = nil,
        max_height = { 10, 0.9 },
        min_height = { 5, 0.1 },
        height = nil,
        border = "rounded",
        minimized_border = "none",
        win_options = {
          winblend = 0,
        },
      },
      -- This is the config that will be passed to nvim_open_win.
      -- Change values here to customize the layout
      override = function(conf)
        return conf
      end,
    },
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-l>"] = "actions.select",
      ["<TAB>"] = "actions.select",
      ["<C-h>"] = "actions.parent",
      ["<C-s>"] = "actions.select_vsplit",
      -- ["<C-h>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      -- ["<C-l>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["H"] = "actions.toggle_hidden",
      ["g\\"] = "actions.toggle_trash",
    },
    view_options = {
      show_hidden = true,
    },
  })

  local status_const = require("oil-vcs-status.constant.status")

  local StatusType = status_const.StatusType

  require("oil-vcs-status").setup({
    status_symbol = {
      [StatusType.Added] = "",
      [StatusType.Copied] = "󰆏",
      [StatusType.Deleted] = "",
      [StatusType.Ignored] = "",
      [StatusType.Modified] = "",
      [StatusType.Renamed] = "",
      [StatusType.TypeChanged] = "󰉺",
      [StatusType.Unmodified] = " ",
      [StatusType.Unmerged] = "",
      [StatusType.Untracked] = "",
      [StatusType.External] = "",

      [StatusType.UpstreamAdded] = "󰈞",
      [StatusType.UpstreamCopied] = "󰈢",
      [StatusType.UpstreamDeleted] = "",
      [StatusType.UpstreamIgnored] = " ",
      [StatusType.UpstreamModified] = "󰏫",
      [StatusType.UpstreamRenamed] = "",
      [StatusType.UpstreamTypeChanged] = "󱧶",
      [StatusType.UpstreamUnmodified] = " ",
      [StatusType.UpstreamUnmerged] = "",
      [StatusType.UpstreamUntracked] = " ",
      [StatusType.UpstreamExternal] = "",
    },
  })
end

return M
