return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      -- Chromium has too many files for git status to be fast
      enable_git_status = false,

      filtered_items = {
        hide_gitignored = false,
        -- Since we turned off git-ignore, manually hide the massive folders
        never_show = {
          ".git",
          "out",
        },
      },
    },
  },
}
