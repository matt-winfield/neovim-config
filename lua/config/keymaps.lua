-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Git
map("n", "<leader>gl", "<cmd>Telescope git_bcommits<cr>", { desc = "Git Buffer History" })
map("v", "<leader>gl", "<cmd>Telescope git_bcommits_range<cr>", { desc = "Git History (Selection)" })

-- Window split Keymaps
map("n", "<leader>wh", "<C-W>s", { desc = "Split window horizontally" })
map("n", "<leader>wv", "<C-W>v", { desc = "Split window vertically" })

-- Yank file path/name to clipboard
map("n", "<leader>yp", "<cmd>let @+=expand('%:p')<cr>", { desc = "Yank buffer path to clipboard" })
map("n", "<leader>yr", "<cmd>let @+=expand('%')<cr>", { desc = "Yank buffer relative path to clipboard" })
map("n", "<leader>yn", "<cmd>let @+=expand('%:t')<cr>", { desc = "Yank buffer name to clipboard" })
wk.add({
  { "<leader>y", group = "yank" },
})

-- Yank line excluding leading/trailing whitespace
map("n", "<leader>yl", "^yg_", { desc = "Yank line contents to clipboard" })

-- Notification group
wk.add({
  { "<leader>n", group = "notifications" },
})

-- Map keybinds to change indentation settings
map("n", "<leader>i2", function()
  vim.bo.expandtab = true
  vim.bo.shiftwidth = 2
  vim.bo.tabstop = 2
  vim.o.softtabstop = 2
  vim.notify("Indentation set to 2 spaces", "info", { title = "Indentation Changed" })
end, { desc = "Set indentation to 2 spaces" })
map("n", "<leader>i4", function()
  vim.bo.expandtab = true
  vim.bo.shiftwidth = 4
  vim.bo.tabstop = 4
  vim.o.softtabstop = 4
  vim.notify("Indentation set to 4 spaces", "info", { title = "Indentation Changed" })
end, { desc = "Set indentation to 4 spaces" })
map("n", "<leader>it", function()
  vim.bo.expandtab = false
  vim.bo.shiftwidth = 4
  vim.bo.tabstop = 4
  vim.o.softtabstop = 4
  vim.notify("Indentation set to tabs", "info", { title = "Indentation Changed" })
end, { desc = "Set indentation to tabs" })
