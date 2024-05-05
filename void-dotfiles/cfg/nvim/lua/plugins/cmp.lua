-----------------------------------------------------------
-- Completions
-----------------------------------------------------------
local cmp = require("cmp")
return {
  "hrsh7th/nvim-cmp",
  opts = {
    mapping = cmp.mapping.preset.insert({
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
    }),
    completion = {
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      col_offset = -3,
      side_padding = 0,
    },
    formatting = {
      format = function(_, item)
        local icons = {
          Array = " ",
          Boolean = " ",
          Class = " ",
          Color = " ",
          Constant = " ",
          Constructor = " ",
          Copilot = " ",
          Enum = " ",
          EnumMember = " ",
          Event = " ",
          File = " ",
          Field = " ",
          Folder = " ",
          Function = " ",
          Interface = " ",
          Key = " ",
          Keyword = " ",
          Method = " ",
          Module = " ",
          Namespace = " ",
          Null = " ",
          Number = " ",
          Object = " ",
          Operator = " ",
          Package = " ",
          Property = " ",
          Reference = " ",
          Snippet = " ",
          String = " ",
          Struct = " ",
          Text = " ",
          TypeParameter = " ",
          Unit = " ",
          Value = " ",
          Variable = " ",
        }
        if icons[item.kind] then
          item.kind = icons[item.kind] .. item.kind
        end
        return item
      end,
    },
  },
}
