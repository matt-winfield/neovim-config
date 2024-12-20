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
    end,
    keys = {
      { "<leader><space>", Util.telescope("files", { cwd = false, hidden = true }), desc = "Find Files (cwd)" },
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({
            find_command = {
              "rg",
              "--files",
              "--hidden",
              "--no-ignore",
              "--glob",
              "!**/node_modules/**",
            },
          })
        end,
        desc = "Find Files (excluding node_modules, including ignored files)",
      },
      {
        "<leader>sg",
        Util.telescope(
          "live_grep",
          { cwd = false, additional_args = { "--hidden", "-g", "!.git/*", "-g", "!.yarn/*" } }
        ),
        desc = "Live Grep",
      },
    },
  },
}
