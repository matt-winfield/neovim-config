return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  keys = {
    { "<leader>gm", ":G mergetool<CR>", desc = "Git Mergetool" },
    { "<leader>gs", "<CMD>tabedit %<CR><CMD>Gvdiffsplit!<CR>", desc = "Open merge split in new tab" },
    { "<leader>tc", "<CMD>tabclose<CR>", desc = "Close tab" },
    { "<leader>gj", "<CMD>diffget //2<CR>", desc = "Get from left" },
    { "<leader>gk", "<CMD>diffget //3<CR>", desc = "Get from right" },
  },
}
