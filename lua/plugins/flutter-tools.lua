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

      -- Auto-restart Flutter after saving Dart files with 200ms delay
      vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "*.dart",
        callback = function()
          vim.defer_fn(function() vim.cmd "FlutterRestart" end, 500)
        end,
      })
    end,
  },
}
