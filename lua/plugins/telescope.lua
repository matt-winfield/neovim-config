local Util = require("lazyvim.util")

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    config = function()
      require("telescope").setup({
        defaults = {
          path_display = { "truncate" },
        },
        extensions = {
          undo = {},
        },
      })

      require("telescope").load_extension("undo")
      vim.keymap.set("n", "<leader>uu", "<cmd>Telescope undo<cr>")
    end,
    keys = {
      { "<leader><space>", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
    },
  },
}
