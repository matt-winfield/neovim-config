return {
  "uga-rosa/ccc.nvim",
  lazy = false,
  opts = function(_, opts)
    local ccc = require("ccc")
    opts.highlighter = {
      auto_enable = true,
      lsp = true,
    }
    opts.outputs = {
      ccc.output.hex,
      ccc.output.hex_short,
      ccc.output.css_rgb,
      ccc.output.css_rgba,
      ccc.output.css_hsl,
    }

    ccc.output.hex.setup({ uppercase = true })
    ccc.output.hex_short.setup({ uppercase = true })
  end,
  keys = {
    { "<leader>pp", "<cmd>CccPick<cr>", desc = "Pick color" },
    { "<leader>ph", "<cmd>CccHighlighterToggle<cr>", desc = "Toggle color highlighter" },
  },
}
