# pywal16.nvim

Pywal16.nvim is a modification of
[pywal.nvim](https://github.com/AlphaTechnolog/pywal.nvim), aiming to support
a transparent background, 16 colors palettes, and more plugins.

It is made to work with [pywal16](https://github.com/eylles/pywal16),
which is a fork of pywal generating/supporting 16 colors colorschemes (original
pywal project only supports 9 colors).

This colorscheme is compatible with "classic" 16 colors palettes (solarized,
molokai, base16, etc.), and has been made to preserve the "red", "green" and
"yellow" implicit meanings. Please note that the presaved themes bundled in
pywal16 or pywal don't all take profit of the 16 colors. You can find some extra
colorschemes in my
[dotfiles repository](https://github.com/uZer/.minimics/tree/master/pywal16themes).

Pywal.nvim was a reimplementation of
[pywal.vim](https://github.com/dylanaraps/wal.vim) totally written in lua, with
extra plugin support. Lua is a better choice if you use plugins also written in
lua like Telescope or NvimTree that aren't supported by default in wal.vim.

This plugin takes advantage of termguicolors (which was unsupported by wal.vim)
and won't use/declare any `ctermbg` or `ctermfg`.

## Screenshots

![01](./.screenshots/01.png)
![02](./.screenshots/02.png)

## External Plugin Support

- BetterWhitespace
- BufferLine
- Coc
- Diff
- Feline
- GitGutter
- Gitsigns
- Ident-BlankLine
- Illuminate
- LSP
- LSP saga
- LSP trouble
- Lualine
- Neogit
- NeoVim (checkhealth...)
- NvimTree
- Nvim-scrollbar
- Telescope
- Tree-sitter

## Installation

You can install this plugin with packer:

```lua
use { 'uZer/pywal16.nvim', as = 'pywal16' }
```

Or with vim-plug:

```vim
Plug 'uZer/pywal16.nvim', { 'as': 'pywal16' }
```

## Active theme

To active the theme, call this in your neovim config:

```lua
local pywal16 = require('pywal16')

pywal16.setup()
```

Or with vim script:

```vim
colorscheme pywal16
```

> It will set automatically the `vim.opt.termguicolors` to true

## Activating lualine theme

Place this in your lualine config:

```lua
local lualine = require('lualine')

lualine.setup {
  options = {
    theme = 'pywal16-nvim',
  },
}
```

## Activating the feline theme (untested with pywal16)

You can put this to your config to activate the feline config:

```lua
local present, feline = pcall(require, 'feline')

if not present then
  return
end

local present, pywal16_feline = pcall(require, 'pywal16.feline')

if not present then
  return
end

feline.setup({
  components = pywal16_feline,
})
```

Then you should see the feline bar working successfully.

## Using the core to get the colors

If you want to get the colors into a lua dictionary:

```lua
local pywal16_core = require('pywal16.core')
local colors = pywal16_core.get_colors()
```

## How it works

pywal/pywal16 automatically generate a file called `colors-wal.vim` in
`~/.cache/wal/colors-wal.vim`, it file contains all the colors that are necesary
to works for vim, it files looks like this:

```vim
" Special
let wallpaper  = "/home/user/Pictures/winter-purple.jpg"
let background = "#110914"
let foreground = "#e3cfe2"
let cursor     = "#e3cfe2"

" Colors
let color0  = "#110914"
let color1  = "#A378B6"
let color2  = "#B687AD"
let color3  = "#D9A2AF"
let color4  = "#F8DDAD"
let color5  = "#AD90CF"
let color6  = "#D2ACD6"
let color7  = "#e3cfe2"
let color8  = "#9e909e"
let color9  = "#A378B6"
let color10 = "#B687AD"
let color11 = "#D9A2AF"
let color12 = "#F8DDAD"
let color13 = "#AD90CF"
let color14 = "#D2ACD6"
let color15 = "#e3cfe2"
```

The theme only reads it files variables and then create a colors dictionary to
create a theme based in it's colors

## Enjoy

If you like this work you can give it a star :)
