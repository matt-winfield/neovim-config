return {
  {
    "stevearc/oil.nvim",
    opts = {
      view_options = {
        show_hidden = true
      }
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Open file explorer (Oil)" },
    },
  },
}
