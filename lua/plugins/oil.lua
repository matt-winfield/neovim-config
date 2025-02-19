return {
  {
    "stevearc/oil.nvim",
    opts = {
      view_options = {
        show_hidden = true,
      },
      win_options = {
        winbar = "%{v:lua.require('oil').get_current_dir()}",
      },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Open file explorer (Oil)" },
    },
  },
}
