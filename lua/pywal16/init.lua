local M = {}
local core = require('pywal16.core')
local highlights = require('pywal16.highlights')

function M.setup()
  local colors = core.get_colors()
  vim.opt.termguicolors = true
  highlights.highlight_all(colors)
end

return M
