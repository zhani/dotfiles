return {
  -- Catppuccin theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- Hotfix: alias the new API so older callers don't explode
    init = function()
      local ok, m = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok and m and m.get_theme and not m.get then
        m.get = m.get_theme
      end
    end,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integrations = {
          bufferline = true, -- keep bufferline integration on
        },
      })
    end,
  },

  -- Make bufferline use the right catppuccin helper (works with both old/new)
  {
    "akinsho/bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      local ok, catbuf = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok and catbuf then
        local get_hl = catbuf.get_theme or catbuf.get
        if get_hl then
          opts = opts or {}
          opts.highlights = get_hl()
        end
      end
      return opts
    end,
  },

  -- Tell LazyVim to use catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
