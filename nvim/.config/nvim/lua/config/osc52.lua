-- ~/.config/nvim/lua/config/osc52.lua
local osc52 = require("vim.ui.clipboard.osc52")

vim.g.clipboard = {
  name = "OSC52",
  copy = {
    ["+"] = osc52.copy,
    ["*"] = osc52.copy,
  },
  paste = {
    ["+"] = osc52.paste,
    ["*"] = osc52.paste,
  },
}

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    if vim.v.event.operator == "y" and (vim.v.event.regname == "+" or vim.v.event.regname == "") then
      osc52.copy(vim.fn.getreg('"'))
    end
  end,
})
