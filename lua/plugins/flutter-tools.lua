return {
  "akinsho/flutter-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional, UI
  },
  ft = { "dart" },
  config = function()
    require("flutter-tools").setup {
      lsp = {
        on_attach = function(_, _)
          -- keybinds here if needed
        end,
      },
    }
  end,
}
