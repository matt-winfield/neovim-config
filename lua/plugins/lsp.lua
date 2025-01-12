return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 10000 },
      servers = {
        eslint = {
          root_dir = require("lspconfig.util").root_pattern(
            "eslint.config.mjs",
            ".eslintrc.js",
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
