return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 10000 },
      servers = {
        -- vtsls = {
        --   root_dir = function()
        --     local lazyvimRoot = require("lazyvim.util.root")
        --     return lazyvimRoot.git()
        --   end,
        -- },
        eslint = {
          root_dir = require("lspconfig.util").root_pattern(
            "eslint.config.mjs",
            ".eslintrc.js",
            ".eslintrc.cjs",
            ".eslintrc.json",
            ".eslintrc",
            ".git"
          ),
          settings = {
            workingDirectories = { mode = "auto" },
          },
        },
      },
    },
  },
}
