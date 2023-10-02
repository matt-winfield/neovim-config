local dataPath = vim.fn.stdpath("data")
return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      {
        "mxsdev/nvim-dap-vscode-js",
        opts = {
          debugger_path = dataPath .. "/lazy/vscode-js-debug",
          adapters = { "pwa-node", "pwa-chrome", "node-terminal" },
        },
      },
      {
        "microsoft/vscode-js-debug",
        build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && move dist out",
      },
    },
    config = function(_, opts)
      require("dap.ext.vscode").load_launchjs()
      require("dapui").setup(opts)

      for _, language in ipairs({ "typescript", "typescriptreact", "javascript", "javascriptreact" }) do
        require("dap").configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch file (Node)",
            program = "${file}",
            cwd = "${workspaceFolder}",
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Attach Node",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
          },
          {
            type = "pwa-chrome",
            request = "launch",
            name = "Launch Chrome",
            url = "http://localhost:3000",
            webRoot = "${workspaceFolder}",
          },
          {
            type = "pwa-chrome",
            request = "attach",
            name = "Attach to Chrome",
            port = 9222,
            processId = require("dap.utils").pick_process,
            webRoot = "${workspaceFolder}",
          },
          {
            type = "node-terminal",
            request = "launch",
            name = "Launch node terminal",
            cwd = "${workspaceFolder}",
          },
          {
            type = "node-terminal",
            request = "attach",
            name = "Attach to node terminal",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
          },
        }
      end
    end,
  },
}
