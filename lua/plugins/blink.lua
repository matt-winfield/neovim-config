return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.completion.list = {
      selection = {
        preselect = false,
        auto_insert = false,
      },
    }
    opts.completion.menu.draw.columns = {
      { "label", "label_description", gap = 1 },
      { "kind_icon", "kind" },
    }
    opts.completion.documentation = {
      auto_show = true,
      auto_show_delay_ms = 100,
    }
    opts.keymap = {
      preset = "enter",
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
