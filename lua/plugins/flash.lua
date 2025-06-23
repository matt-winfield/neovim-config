return {
  "folke/flash.nvim",
  config = function()
    require("flash").setup()
    vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#FCFCFC", bg = "#600000" })
  end,
}
