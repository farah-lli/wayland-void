-----------------------------------------------------------
-- Bufferline
-----------------------------------------------------------
return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<TAB>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
  },
  opts = {
    options = {
      separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
    },
  },
}
