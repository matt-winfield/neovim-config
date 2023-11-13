local Util = require("lazyvim.util")
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      require("telescope").setup({
        defaults = {
          path_display = { "truncate" },
          mappings = {
            i = {
              ["<C-s>"] = actions.cycle_previewers_next,
              ["<C-a>"] = actions.cycle_previewers_prev,
            },
          },
        },
        extensions = {
          undo = {
            mappings = {
              i = {
                ["<cr>"] = require("telescope-undo.actions").restore,
                ["<C-y>"] = require("telescope-undo.actions").yank_additions,
                ["<C-t>"] = require("telescope-undo.actions").yank_deletions,
              },
            },
          },
        },
      })

      require("telescope").load_extension("undo")
      vim.keymap.set("n", "<leader>uu", "<cmd>Telescope undo<cr>")
    end,
    keys = {
      { "<leader><space>", Util.telescope("files", { cwd = false, hidden = true }), desc = "Find Files (cwd)" },
      {
        "<leader>sg",
        Util.telescope("live_grep", { additional_args = { "--hidden", "-g", "!.git/*", "-g", "!.yarn/*" } }),
        desc = "Live Grep",
      },
    },
  },
}
