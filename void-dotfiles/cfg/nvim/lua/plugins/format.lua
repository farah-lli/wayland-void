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
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      markdown = { "prettier" },
      yaml = { "prettier" },
      sh = { "beautysh" },
      zsh = { "beautysh" },
      lua = { "stylua" },
      -- Injected
      ["*"] = { "injected" },
    },

    formatters = {
      injected = { options = { ignore_errors = true } },
    },
  },
}
