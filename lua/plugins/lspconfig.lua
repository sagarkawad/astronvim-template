return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {
          completeFunctionCalls = true,
          showTodos = true,
          renameFilesWithClasses = "prompt", -- or "always"
          enableSdkFormatter = true,
        },
      },
    },
  },
}
