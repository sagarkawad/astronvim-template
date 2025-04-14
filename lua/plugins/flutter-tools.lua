return {
  "akinsho/flutter-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = "dart", -- Apply this to Dart files
  config = function()
    require("flutter-tools").setup {
      lsp = {
        on_attach = function(_, bufnr)
          -- Create an autocmd to format Dart files on save
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("FormatDartOnSave", { clear = true }),
            buffer = bufnr,
            callback = function()
              -- Run `dart format` with the line-length option before saving
              vim.cmd "silent !dart format --line-length 60 %" -- % refers to the current file
              -- Reload the file to reflect external changes (if necessary)
              vim.cmd "e!"
            end,
          })
        end,
      },
    }
  end,
}
