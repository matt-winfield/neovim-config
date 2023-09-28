return {
  {
    -- Disable flash, keybindings conflict with mini.surround
    -- I just use / and ? to search
    "folke/flash.nvim",
    enabled = false,
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
