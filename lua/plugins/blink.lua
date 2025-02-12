return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.completion.menu.draw.columns = {
      { "label", "label_description", gap = 1 },
      { "kind_icon", "kind" },
    }
    opts.keymap = {
      ["<C-x>"] = {
        function(cmp)
          cmp.show()
        end,
      },
    }
    -- opts.fuzzy = {
    --   prebuilt_binaries = {
    --     download = false, -- SSL certificate fails to download, must install manually - See https://cmp.saghen.dev/configuration/fuzzy.html#installation
    --   },
    -- }
    vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = "#CA92FC" })
    vim.api.nvim_set_hl(0, "BlinkCmpKindInterface", { link = "CmpItemKindVariable" })
    vim.api.nvim_set_hl(0, "BlinkCmpKindFile", { fg = "#59DBFC" })
  end,
}
