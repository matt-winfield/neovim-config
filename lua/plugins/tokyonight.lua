return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        hl.NeoTreeMessage = hl.NeoTreeDimText -- (1 Hidden Item message, for example. By default not set so has poor contrast)

        hl.LineNr = { fg = "#737aa2" } -- Set the gutter line numbers to have better contrast than the default
        hl.CursorLineNr = { fg = "#c2c5d6" }

        hl.WinBar = {} -- Used by dropbar, reset to None so it has no background
      end,
    },
  },
}
