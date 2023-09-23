return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>/", vim.NIL },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    config = function()
      require("telescope").setup({
        extensions = {
          undo = {},
        },
      })
      require("telescope").load_extension("undo")
      vim.keymap.set("n", "<leader>uu", "<cmd>Telescope undo<cr>")
    end,
  },
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
      mappings = {
        comment_line = "<leader>/",
      },
    },
  },
}
