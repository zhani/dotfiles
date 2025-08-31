-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable LazyVim auto format
vim.g.autoformat = false

-- SSH-only: use Neovim's built-in OSC52 provider and make y/yy go to system clipboard.
if vim.env.SSH_TTY or vim.env.SSH_CONNECTION or vim.env.SSH_CLIENT then
  local o = vim.opt
  local g = vim.g
  local osc52 = require("vim.ui.clipboard.osc52")

  -- Make default yanks target the system clipboard (+)
  o.clipboard = "unnamedplus"

  -- IMPORTANT: bind the factory functions to "+" and "*"
  g.clipboard = {
    name = "OSC 52",
    copy  = {
      ["+"] = osc52.copy("+"),
      ["*"] = osc52.copy("*"),
    },
    paste = {
      ["+"] = osc52.paste("+"),
      ["*"] = osc52.paste("*"),
    },
  }
end
