require("config.lazy")

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    if vim.g.vscode then
      vim.keymap.del("n", "u")
      vim.keymap.del("n", "<C-r>")
    end
  end,
})
