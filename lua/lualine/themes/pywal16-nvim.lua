local core = require('pywal16.core')
local colors = core.get_colors()

local pywal16 = {}

pywal16.normal = {
  a = { bg = colors.color4, fg = colors.background },
  b = { bg = colors.background, fg = colors.color4 },
  c = { bg = colors.transparent, fg = colors.color4 },
  z = { bg = colors.color4, fg = colors.background },
  y = { bg = colors.background, fg = colors.color4 },
  x = { bg = colors.transparent, fg = colors.color4 },
}

pywal16.insert = {
  a = { bg = colors.color2, fg = colors.background },
  b = { bg = colors.background, fg = colors.color2 },
  c = { bg = colors.transparent, fg = colors.color2 },
  z = { bg = colors.color2, fg = colors.background },
  y = { bg = colors.background, fg = colors.color2 },
  x = { bg = colors.transparent, fg = colors.color2 },
}

pywal16.command = {
  a = { bg = colors.color6, fg = colors.background },
  b = { bg = colors.background, fg = colors.color6 },
  c = { bg = colors.transparent, fg = colors.color6 },
  z = { bg = colors.color6, fg = colors.background },
  y = { bg = colors.background, fg = colors.color6 },
  x = { bg = colors.transparent, fg = colors.color6 },
}

pywal16.visual = {
  a = { bg = colors.color5, fg = colors.background },
  b = { bg = colors.background, fg = colors.color5 },
  c = { bg = colors.transparent, fg = colors.color5 },
  z = { bg = colors.color5, fg = colors.background },
  y = { bg = colors.background, fg = colors.color5 },
  x = { bg = colors.transparent, fg = colors.color5 },
}

pywal16.replace = {
  a = { bg = colors.color11, fg = colors.background },
  b = { bg = colors.background, fg = colors.color11 },
  c = { bg = colors.transparent, fg = colors.color11 },
  z = { bg = colors.color11, fg = colors.background },
  y = { bg = colors.background, fg = colors.color11 },
  x = { bg = colors.transparent, fg = colors.color11 },
}

pywal16.inactive = {
  a = { bg = colors.background, fg = colors.color7 },
  b = { bg = colors.background, fg = colors.foreground, gui = "bold" },
  c = { bg = colors.background, fg = colors.foreground },
  z = { bg = colors.background, fg = colors.color7 },
  y = { bg = colors.background, fg = colors.foreground, gui = "bold" },
  x = { bg = colors.background, fg = colors.foreground },
}

return pywal16
