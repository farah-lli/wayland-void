-----------------------------------------------------------
--  Buffer delete
-----------------------------------------------------------
return {
  -- luacheck: ignore
  -- Delete buffers without messing up window layout
  {
    "famiu/bufdelete.nvim",
    cmd = { "Bdelete", "Bwipeout" },
    keys = {
      { "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete Buffer" },
      { "<leader>bD", "<cmd>bwipeout<cr>", desc = "Delete Out" },
    },
  },
}
