return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional (for UI improvements)
    },
    config = function()
      require("flutter-tools").setup {
        dev_log = {
          open_cmd = "tabnew",
        },
      }
    end,
  },
}
