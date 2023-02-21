local core = require('pywal16.core')
local colors = core.get_colors()

local pywal16 = {}

pywal16.normal = {
  a = { bg = colors.color4, fg = colors.background },
  b = { bg = colors.background, fg = colors.color7 },
  c = { bg = colors.transparent, fg = colors.color4 },
}

pywal16.insert = {
  a = { bg = colors.color2, fg = colors.background },
  b = { bg = colors.background, fg = colors.color4 },
}

pywal16.command = {
  a = { bg = colors.color5, fg = colors.background },
  b = { bg = colors.background, fg = colors.color5 },
}

pywal16.visual = {
  a = { bg = colors.color6, fg = colors.background },
  b = { bg = colors.background, fg = colors.color6 },
}

pywal16.replace = {
  a = { bg = colors.color11, fg = colors.background },
  b = { bg = colors.background, fg = colors.color11 },
}

pywal16.inactive = {
  a = { bg = colors.background, fg = colors.color7 },
  b = { bg = colors.background, fg = colors.foreground, gui = "bold" },
  c = { bg = colors.background, fg = colors.foreground },
}

return pywal16
