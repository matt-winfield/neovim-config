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
    config = function()
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })

      vim.treesitter.language.register("mdx", "markdown")
    end,
    -- Some treesitter plugins don't compile well with the default compiler,
    -- try using zig then `:TSInstall <lang>`
    -- config = function()
    --   -- Ensure zig is installed, `choco install zig`
    --   require("nvim-treesitter.install").compilers = { "zig" }
    -- end,
  },
}
