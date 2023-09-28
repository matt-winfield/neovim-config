-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  group = vim.api.nvim_create_augroup("cs_only_keymap", { clear = true }),
  callback = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>o"] = {
        name = "+OmniSharp",
        s = {
          name = "+OmniSharp",
          f = {
            name = "+Find/Fix",
          },
          p = {
            name = "+Preview",
          },
          s = {
            name = "+Status",
          },
          r = {
            name = "+Rename",
          },
        },
      },
    })

    map("n", "<leader>osgd", "<cmd>OmniSharpGotoDefinition<cr>", { desc = "OmniSharp Go To Definition" })
    map("n", "<leader>osfu", "<cmd>OmniSharpFindUsages<cr>", { desc = "OmniSharp Find Usages" })
    map({ "n", "x" }, "<leader>osca", "<cmd>OmniSharpGetCodeActions<cr>", { desc = "OmniSharp Code Actions" })
    map("n", "<leader>osfi", "<cmd>OmniSharpFindImplementations<cr>", { desc = "OmniSharp Find Implementations" })
    map("n", "<leader>ospd", "<cmd>OmniSharpPreviewDefinition<cr>", { desc = "OmniSharp Preview Definition" })
    map("n", "<leader>ospi", "<cmd>OmniSharpPreviewImplementations<cr>", { desc = "OmniSharp Preview Implementations" })
    map("n", "<leader>ost", "<cmd>OmniSharpTypeLookup<cr>", { desc = "OmniSharp Type Lookup" })
    map("n", "<leader>osd", "<cmd>OmniSharpDocumentation<cr>", { desc = "OmniSharp Documentation" })
    map("n", "<leader>osfs", "<cmd>OmniSharpFindSymbol<cr>", { desc = "OmniSharp Find Symbol" })
    map("n", "<leader>osfx", "<cmd>OmniSharpFixUsings<cr>", { desc = "OmniSharp Fix Usings" })
    map({ "n", "i" }, "<C-\\>", "<cmd>OmniSharpSignatureHelp<cr>", { desc = "OmniSharp Signature Help" })
    map("n", "<leader>os=", "<cmd>OmniSharpCodeFormat<cr>", { desc = "OmniSharp Code Format" })
    map("n", "<leader>ossu", "<cmd>OmniSharpStatus<cr>", { desc = "OmniSharp Status" })
    map("n", "<leader>osrn", "<cmd>OmniSharpRename<cr>", { desc = "OmniSharp Rename" })
  end,
})
