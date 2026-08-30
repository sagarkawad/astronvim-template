return {
  {
    "mg979/vim-visual-multi", -- Multi-cursor plugin
    event = "VeryLazy", -- Load only when needed
    keys = { -- Optional: Define keymaps
      { "<C-n>", mode = "n" }, -- Ctrl+n to start multicursor
    },
  },
}
