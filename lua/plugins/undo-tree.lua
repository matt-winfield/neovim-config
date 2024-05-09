return {
  {
    "mbbill/undotree",
    -- Config
    config = function()
      -- For Windows: set the diff command to FC (File Compare) instead of diff (which is not available on Windows)
      if vim.fn.has("win32") == 1 then
        vim.g.undotree_DiffCommand = "FC"
      end
    end,
    lazy = false,
    keys = {
      { "<leader>uu", vim.cmd.UndotreeToggle, desc = "Toggle undotree" },
    },
  },
}
