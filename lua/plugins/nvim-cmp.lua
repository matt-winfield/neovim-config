return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<C-x>"] = cmp.mapping.complete(),
      })

      vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#CA92FC" })
      vim.api.nvim_set_hl(0, "CmpItemKindInterface", { link = "CmpItemKindVariable" })
      vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#59DBFC" })
    end,
  },
}
