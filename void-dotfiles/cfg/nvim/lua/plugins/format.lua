-----------------------------------------------------------
-- AutoFormate
-----------------------------------------------------------
return {
  "stevearc/conform.nvim",
  opts = {
    format = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
    },

    formatters_by_ft = {
      -- Shell
      sh = { "shfmt" },

      -- Lua
      lua = { "stylua" },

      -- Python
      python = { "ruff_fix", "ruff_format" },

      -- C/C++
      c = { "clang_format" },
      cpp = { "clang_format" },

      -- Golang
      go = { "goimports" },

      -- Javascript/Typescript
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      ["javascript.jsx"] = { "prettierd" },
      typescriptreact = { "prettierd" },
      ["typescript.tsx"] = { "prettierd" },
      -- vue = { "prettierd" },
      svelte = { "prettierd" },

      -- HTML
      html = { "prettierd" },

      -- CSS
      css = { "prettierd" },

      -- PHP
      php = { "pint" },

      -- Markdown
      markdown = { "prettierd" },

      -- JSON
      json = { "prettierd" },
      -- json = { "jq" },

      -- YAML
      yaml = { "prettierd" },

      -- TOML
      toml = { "taplo" },

      -- Make/CMake
      make = { "cmake_format" },
      cmake = { "cmake_format" },

      -- SQL
      sql = { "sql_formatter" },

      -- Injected
      ["*"] = { "injected" },
    },

    formatters = {
      injected = { options = { ignore_errors = true } },
    },
  },
}
