return {
  {
    "folke/which-key.nvim",
    config = function()
      local wk = require("which-key")
      wk.register({
        ["<leader>i"] = { name = "+Indentation" },
      })
    end,
  },
}
