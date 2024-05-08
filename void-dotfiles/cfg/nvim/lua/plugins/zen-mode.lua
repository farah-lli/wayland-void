-----------------------------------------------------------
-- Zen Mode
-----------------------------------------------------------
return {
  "folke/zen-mode.nvim",
  enabled = true,

  keys = {
    { "<leader>zo", [[<cmd>lua require("zen-mode").toggle()<cr>]], desc = "Zen mode" },
  },

  opts = {
    window = {
      width = 0.85,
      height = 1,
      options = {
        colorcolumn = "",
        cursorcolumn = false,
        cursorline = false,
        number = true,
        relativenumber = true,
      },
    },

    event = { "BufEnter *.rb" },
    plugins = {
      enabled = true,
      options = {
        ruler = false,
        showmd = true,
      },
      twilight = { enabled = false },
      gitsigns = { enabled = false },
      tmux = { enabled = false },
      alacritty = {
        enabled = true,
        font = "15",
      },
    },
  },
}
