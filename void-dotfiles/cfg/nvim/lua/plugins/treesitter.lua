-----------------------------------------------------------
-- Treesiter
-----------------------------------------------------------
return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "windwp/nvim-ts-autotag" },
    opts = {
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "sql",
        "yaml",
        "lua",
        "luadoc",
        "luap",
        "cpp",
        "markdown",
        "markdown_inline",
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",
        -- 'gitattributes',
        "diff",
        "vim",
        "vimdoc",
        -- 'regex',
        "bash",
        "toml",
        "ssh_config",
        "zathurarc",
        "json",
        "printf",
        "ini",
      },
      auto_install = true,
      -- ensure_installed = "all", -- one of "all" or a list of languages
      ignore_install = { "" }, -- List of parsers to ignore installing
      sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

      highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "css" }, -- list of language that will be disabled
      },
      autopairs = {
        enable = true,
      },
      indent = { enable = true, disable = { "python", "css" } },

      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },

      -- auto tag
      autotag = {
        enable = true,
      },
    },
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    branch = "use-children",
    lazy = false,
    config = function()
      -- This module contains a number of default definitions
      local rainbow_delimiters = require("rainbow-delimiters")

      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = rainbow_delimiters.strategy["global"],
          vim = rainbow_delimiters.strategy["local"],
        },
        query = {
          [""] = "rainbow-delimiters",
          lua = "rainbow-blocks",
          tsx = "rainbow-parens",
          javascript = "rainbow-delimiters-react",
        },
        highlight = {
          "RainbowDelimiterYellow",
          "RainbowDelimiterRed",
          "RainbowDelimiterOrange",
          "RainbowDelimiterBlue",
          "RainbowDelimiterGreen",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
        },
      }
    end,
  },
}
