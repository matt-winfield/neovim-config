local lspconfig = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      graphql = {
        root_dir = lspconfig.util.root_pattern(".graphqlrc", ".graphqlrc.json", ".git", "package.json"),
      },
    },
  },
}
