return {
  {
    "brianhuster/live-preview.nvim",
    dependencies = {
      -- Picker for `:LivePreview pick` (LazyVim ships snacks.nvim by default)
      "folke/snacks.nvim",
    },
    -- Load on the command or when opening a previewable filetype
    cmd = { "LivePreview" },
    ft = { "markdown", "html", "asciidoc", "svg" },
    opts = {},
    keys = {
      { "<leader>lp", "<cmd>LivePreview start<cr>", desc = "Live Preview: start" },
      { "<leader>lo", "<cmd>LivePreview pick<cr>", desc = "Live Preview: pick file" },
      { "<leader>lc", "<cmd>LivePreview close<cr>", desc = "Live Preview: close" },
    },
  },
}
