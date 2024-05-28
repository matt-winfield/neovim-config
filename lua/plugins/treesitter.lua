vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})

vim.treesitter.language.register("markdown", "mdx")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      highlight = {
        enable = true,
        disable = function(lang, buf)
          if lang == "html" then
            -- Treesitter highlight crashes in HTML
            return true
          end
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            vim.notify(
              "File larger than 100KB treesitter disabled for performance",
              vim.log.levels.WARN,
              { title = "Treesitter" }
            )
            return true
          end
        end,
      },
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
    -- Some treesitter plugins don't compile well with the default compiler,
    -- try using zig then `:TSInstall <lang>`
    -- config = function()
    --   -- Ensure zig is installed, `choco install zig`
    --   require("nvim-treesitter.install").compilers = { "zig" }
    -- end,
  },
}
