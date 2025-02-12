return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      -- Formatting can be quite slow on work machine, so give it a long timeout
      timeout_ms = 10000,
    },
    formatters_by_ft = {
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
    },
  },
}
