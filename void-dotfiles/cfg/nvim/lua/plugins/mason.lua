-----------------------------------------------------------
-- Mason Lsp Package Manager
-----------------------------------------------------------
return {
  -- cmdline tools and lsp servers
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- formatters
        "prettierd",
        "markdownlint",
        "rustywind",
        "stylua",
        -- Language
        "html-lsp",
        "css-lsp",
        "emmet-ls",
      },
    },
  },
}
