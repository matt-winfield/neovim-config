return {
  {
    -- Disable flash keybindings, keybindings conflict with mini.surround
    -- The enhanced f, F, t and T behaviour will still work
    -- Otherwise I just use / and ? for search
    "folke/flash.nvim",
    keys = {
      { "s", mode = { "n", "x", "o" }, false, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, false, desc = "Flash Treesitter" },
      { "r", mode = "o", false, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, false, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, false, desc = "Toggle Flash Search" },
    },
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "sa",
        delete = "sd",
        find = "sf",
        find_left = "sF",
        highlight = "sh",
        replace = "sr",
        update_n_lines = "sn",
      },
    },
  },
}
