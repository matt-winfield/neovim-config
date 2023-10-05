return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "prisma",
        "rust",
        "dockerfile",
        "gitignore",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          -- C-space doesn't work in windows terminal, so use <cr> and <tab> instead
          init_selection = "<cr>",
          node_incremental = "<cr>",
          scope_incremental = "<tab>",
          node_decremental = "<bs>",
        },
      },
    },
  },
}
