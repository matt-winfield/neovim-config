return {
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Open file explorer (Oil)" },
    },
    config = function()
      require("oil").setup()
    end,
  },
}
