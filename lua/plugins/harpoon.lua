return {
  "ThePrimeagen/harpoon",
  event = "BufEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    save_on_toggle = true,
  },
  config = function()
    local wk = require("which-key")

    wk.register({
      ["<leader>h"] = {
        name = "+harpoon",
      },
    })
  end,
  keys = {
    { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add file" },
    { "<leader>hr", "<cmd>lua require('harpoon.mark').rm_file()<cr>", desc = "Remove file" },
    { "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Harpoon menu" },
    { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Next file" },
    { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Previous file" },
    { "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "File 1" },
    { "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "File 2" },
    { "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "File 3" },
    { "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "File 4" },
    { "<leader>h5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = "File 5" },
  },
}
