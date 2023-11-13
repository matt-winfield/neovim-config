return {
  "ThePrimeagen/git-worktree.nvim",
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
  },
  config = function()
    require("git-worktree").setup({})
    require("telescope").load_extension("git_worktree")
  end,
  keys = {
    {
      "<leader>gw",
      ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
      desc = "Git worktrees",
    },
    {
      "<leader>gW",
      ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
      desc = "Create git worktree",
    },
  },
}
