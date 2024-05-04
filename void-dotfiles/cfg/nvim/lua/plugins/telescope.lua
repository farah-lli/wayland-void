-----------------------------------------------------------
-- telescope
-----------------------------------------------------------
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
    "jvgrootveld/telescope-zoxide",
  },
  keys = {
    { "<leader>cd", "<cmd>Telescope zoxide list<cr>", desc = "Recent Folders" },
    {
      "<leader>cs",
      ":Telescope file_browser path=%:p:h=%:p:h<cr>",
      desc = "Browse Files",
    },
  },
  opts = {
    pickers = {
      find_files = {
        theme = "dropdown",
      },
      oldfiles = {
        theme = "dropdown",
      },
      registers = {
        theme = "dropdown",
      },
      colorscheme = {
        theme = "dropdown",
      },
      diagnostics = {
        theme = "dropdown",
      },
    },
    defaults = {
      -- Default configuration for telescope goes here:
      -- config_key = value,
      mappings = {
        i = {
          ["<C-h>"] = "which_key",
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<C-j>"] = require("telescope.actions").move_selection_next,
        },
      },
    },
  },
}
