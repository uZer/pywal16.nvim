local M = {}

function M.get_colors()
  local colors_paths = {}

  -- $PYWAL_CACHE_FILE
  if os.getenv("PYWAL_CACHE_FILE") then
    table.insert(colors_paths, os.getenv("PYWAL_CACHE_FILE"))
  end

  -- $PYWAL_CACHE_DIR/colors-wal.vim
  if os.getenv("PYWAL_CACHE_DIR") then
    table.insert(colors_paths, os.getenv("PYWAL_CACHE_DIR") .. "/colors-wal.vim")
  end

  -- $XDG_CACHE_HOME/wal/colors-wal.vim
  if os.getenv("XDG_CACHE_HOME") then
    table.insert(colors_paths, os.getenv("XDG_CACHE_HOME") .. "/wal/colors-wal.vim")
  end

  -- $HOME/.cache/wal/colors-wal.vim
  if os.getenv("HOME") then
    table.insert(colors_paths, os.getenv("HOME") .. "/.cache/wal/colors-wal.vim")
  end

  -- use first available path in the possible paths list
  local colors_path = nil
  for _, path in ipairs(colors_paths) do
    if vim.fn.filereadable(path) == 1 then
      colors_path = path
      break
    end
  end

  -- import pywal cache file
  if colors_path then
    vim.cmd("source " .. vim.fn.fnameescape(colors_path))
  else
    vim.notify("couldn't read wal colors, file does not exist")
  end

  return {
    transparent = "NONE",
    background = vim.g.background,
    foreground = vim.g.foreground,
    cursor = vim.g.cursor,
    color0 = vim.g.color0,
    color1 = vim.g.color1,
    color2 = vim.g.color2,
    color3 = vim.g.color3,
    color4 = vim.g.color4,
    color5 = vim.g.color5,
    color6 = vim.g.color6,
    color7 = vim.g.color7,
    color8 = vim.g.color8,
    color9 = vim.g.color9,
    color10 = vim.g.color10,
    color11 = vim.g.color11,
    color12 = vim.g.color12,
    color13 = vim.g.color13,
    color14 = vim.g.color14,
    color15 = vim.g.color15,
  }
end

return M
