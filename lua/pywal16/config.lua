local M = {}

M.highlights_base = function(colors)
  return {
    Boolean = { fg = colors.color5 },
    Character = { fg = colors.color12 },
    CmpDocumentationBorder = { fg = colors.foreground, bg = colors.transparent },
    CmpItemAbbr = { fg = colors.foreground, bg = colors.transparent },
    CmpItemAbbrDeprecated = { fg = colors.color2, bg = colors.transparent },
    CmpItemAbbrMatch = { fg = colors.color7, bg = colors.transparent },
    CmpItemAbbrMatchFuzzy = { fg = colors.color7, bg = colors.transparent },
    CmpItemKind = { fg = colors.color4, bg = colors.transparent },
    CmpItemMenu = { fg = colors.color2, bg = colors.transparent },
    ColorColumn = { bg = colors.background },
    Comment = { fg = colors.color8 },
    Conceal = { fg = colors.color4, bg = colors.transparent },
    Conditional = { fg = colors.color2 },
    Constant = { fg = colors.color9 },
    Cursor = { fg = colors.foreground, bg = colors.cursor },
    CursorColumn = { bg = colors.transparent },
    CursorIM = { fg = colors.foreground, bg = colors.cursor },
    CursorLine = { bg = colors.transparent },
    CursorLineNr = { fg = colors.color1 },
    Debug = { fg = colors.color11 },
    Define = { fg = colors.color6 },
    Delimiter = { fg = colors.foreground },
    DiffAdd = { fg = colors.foreground, bg = colors.color2 },
    DiffChange = { fg = colors.transparent, bg = colors.color0 },
    DiffDelete = { fg = colors.foreground, bg = colors.color1 },
    DiffText = { fg = colors.foreground, bg = colors.color1 },
    Directory = { fg = colors.color4 },
    EndOfBuffer = { fg = colors.background, bg = colors.transparent },
    Error = { fg = colors.color11, bg = colors.transparent },
    ErrorMsg = { fg = colors.color11, bg = colors.transparent },
    Exception = { fg = colors.color6 },
    Float = { fg = colors.color5 },
    FloatBorder = { fg = colors.foreground, bg = colors.transparent },
    FoldColumn = { fg = colors.color4, bg = colors.transparent },
    Folded = { fg = colors.color4, bg = colors.transparent },
    Function = { fg = colors.color3 },
    Identifier = { fg = colors.color5 },
    Ignore = { fg = colors.color7, bg = colors.transparent },
    IncSearch = { fg = colors.foreground, bg = colors.color3 },
    Include = { fg = colors.color6 },
    Keyword = { fg = colors.color4 },
    Label = { fg = colors.color4 },
    LineNr = { fg = colors.color8, bg = colors.transparent },
    Macro = { fg = colors.color6 },
    MatchParen = { fg = colors.color4, bg = colors.transparent },
    ModeMsg = { fg = colors.foreground, bg = colors.transparent },
    MoreMsg = { fg = colors.color5 },
    MsgArea = { fg = colors.foreground, bg = colors.transparent },
    MsgSeparator = { fg = colors.color8, bg = colors.transparent },
    NonText = { fg = colors.background },
    Normal = { fg = colors.foreground, bg = colors.transparent },
    NormalFloat = { fg = colors.foreground, bg = colors.background },
    NormalNC = { fg = colors.foreground, bg = colors.transparent },
    Number = { fg = colors.color5 },
    Operator = { fg = colors.color6 },
    Pmenu = { fg = colors.foreground, bg = colors.transparent },
    PmenuSbar = { bg = colors.transparent },
    PmenuSel = { fg = colors.transparent, bg = colors.color0 },
    PmenuThumb = { bg = colors.color2 },
    PreCondit = { fg = colors.color6 },
    PreProc = { fg = colors.color6 },
    Question = { fg = colors.color5 },
    QuickFixLine = { bg = colors.color2 },
    Repeat = { fg = colors.color6 },
    Search = { fg = colors.foreground, bg = colors.color2 },
    SignColumn = { fg = colors.transparent, bg = colors.transparent },
    Special = { fg = colors.color6 },
    SpecialChar = { fg = colors.foreground },
    SpecialComment = { fg = colors.color2 },
    SpecialKey = { fg = colors.color4 },
    SpellBad = { fg = colors.color2 },
    SpellCap = { fg = colors.color6 },
    SpellLocal = { fg = colors.color4 },
    SpellRare = { fg = colors.color6 },
    Statement = { fg = colors.color6 },
    StatusLine = { fg = colors.transparent, bg = colors.transparent },
    StatusLineNC = { fg = colors.transparent, bg = colors.transparent },
    StorageClass = { fg = colors.color7 },
    String = { fg = colors.color6 },
    Structure = { fg = colors.color6 },
    Substitute = { fg = colors.color1, bg = colors.color6 },
    Tag = { fg = colors.color4 },
    TermCursor = { fg = colors.foreground, bg = colors.cursor },
    TermCursorNC = { fg = colors.foreground, bg = colors.cursor },
    Title = { fg = colors.color4 },
    Todo = { fg = colors.color11, bg = colors.transparent },
    Type = { fg = colors.color5 },
    Typedef = { fg = colors.color6 },
    Variable = { fg = colors.color9 },
    VertSplit = { fg = colors.color4, bg = colors.transparent },
    Visual = { fg = colors.foreground, bg = colors.color5 },
    VisualNOS = { bg = colors.transparent },
    WarningMsg = { fg = colors.color3, bg = colors.transparent },
    Whitespace = { fg = colors.color8, bg = colors.background },
    WildMenu = { fg = colors.color7, bg = colors.color4 },
    WinBar = { bg = colors.transparent },
    WinBarNC = { bg = colors.transparent },
    WinSeparator = { fg = colors.color8, bg = colors.transparent },
    lCursor = { fg = colors.foreground, bg = colors.cursor },

    -- treesitter

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may color5.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For color1 blocks.
    TSComment = { fg = colors.color8 },
    TSConstructor = { fg = colors.color6 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSDanger = { fg = colors.transparent, bg = colors.color3 },
    TSNote = { fg = colors.transparent, bg = colors.color5 },
    TSWarning = { fg = colors.transparent, bg = colors.color5 },
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    -- TSConstant          = { };    -- For constants
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { fg = colors.color12 }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { fg = colors.color6 },         -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { fg = colors.color6 }, -- For keywords used to define a fuction.
    TSLabel = { fg = colors.color7 },           -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    TSOperator = { fg = colors.color7 },         -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = colors.color5 },        -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    TSProperty = { fg = colors.color4 },         -- Same as `TSField`.
    TSPunctDelimiter = { fg = colors.color7 },   -- For delimiters ie: `.`
    TSPunctBracket = { fg = colors.foreground }, -- For brackets and parens.
    TSPunctSpecial = { fg = colors.color7 },     -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    TSStringRegex = { fg = colors.color7 },  -- For regexes.
    TSStringEscape = { fg = colors.color6 }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    TSVariableBuiltin = { fg = colors.color11 }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag               = { };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = colors.color8 },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.

    -- LspTrouble
    LspTroubleCount = { fg = colors.color6, bg = colors.foreground },
    LspTroubleNormal = { fg = colors.foreground, bg = colors.transparent },
    LspTroubleText = { fg = colors.foreground },

    -- Illuminate
    illuminatedCurWord = { bg = colors.foreground },
    illuminatedWord = { bg = colors.foreground },

    -- diff
    diffAdded = { fg = colors.color2 },
    diffChanged = { fg = colors.color3 },
    diffFile = { fg = colors.color7 },
    diffIndexLine = { fg = colors.color6 },
    diffLine = { fg = colors.color1 },
    diffNewFile = { fg = colors.color6 },
    diffOldFile = { fg = colors.color5 },
    diffRemoved = { fg = colors.color1 },

    -- diagnostics
    DiagnosticError = { fg = colors.color9  },
    DiagnosticHint  = { fg = colors.color14 },
    DiagnosticInfo  = { fg = colors.color15 },
    DiagnosticWarn  = { fg = colors.color11 },

    DiagnosticUnderlineError = { undercurl = true, fg = colors.color9  },
    DiagnosticUnderlineHint  = { undercurl = true, fg = colors.color14 },
    DiagnosticUnderlineInfo  = { undercurl = true, fg = colors.color15 },
    DiagnosticUnderlineWarn  = { undercurl = true, fg = colors.color11 },

    -- Neogit
    NeogitBranch = { fg = colors.color6 },
    NeogitDiffAddHighlight = { fg = colors.color4, bg = colors.color4 },
    NeogitDiffContextHighlight = { bg = colors.transparent, fg = colors.foreground },
    NeogitDiffDeleteHighlight = { fg = colors.color11, bg = colors.color11 },
    NeogitHunkHeader = { bg = colors.transparent, fg = colors.foreground },
    NeogitHunkHeaderHighlight = { bg = colors.foreground, fg = colors.color7 },
    NeogitRemote = { fg = colors.color6 },

    -- GitGutter
    GitGutterAdd = { fg = colors.color4 },     -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = colors.color5 },  -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = colors.color11 }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = colors.color2 },    -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = colors.color3 }, -- diff mode: Changed line |diff.txt|
    GitSignsCurrentLineBlame = { fg = colors.color8, bg = colors.transparent },
    GitSignsDelete = { fg = colors.color1 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = colors.color5, bg = colors.transparent },
    TelescopeNormal = { fg = colors.foreground, bg = colors.transparent },
    TelescopeSelection = { fg = colors.transparent, bg = colors.color2 },

    -- Indent Blank Line
    IblIndent = { fg = colors.color8, bg = colors.transparent },
    IblScope = { fg = colors.color7, bg = colors.transparent },
    -- IblWhitespace = { fg = colors.color8, bg = colors.background },

    -- NvimTree
    NvimTreeFolderIcon = { fg = colors.color2, bg = colors.transparent },
    NvimTreeGitDeleted = { fg = colors.color11 },
    NvimTreeGitDirty = { fg = colors.color5 },
    NvimTreeGitNew = { fg = colors.color4 },
    NvimTreeImageFile = { fg = colors.foreground },
    NvimTreeIndentMarker = { fg = colors.foreground },
    NvimTreeNormal = { fg = colors.foreground, bg = colors.transparent },
    NvimTreeNormalNC = { fg = colors.foreground, bg = colors.transparent },
    NvimTreeRootFolder = { fg = colors.color6 },
    NvimTreeSpecialFile = { fg = colors.color6 },
    NvimTreeStatusLineNC = { bg = colors.transparent, fg = colors.transparent },
    NvimTreeSymlink = { fg = colors.color7 },

    -- LspSaga
    DefinitionCount = { fg = colors.color6 },
    DefinitionIcon = { fg = colors.color7 },
    LspFloatWinBorder = { fg = colors.foreground },
    LspFloatWinNormal = { bg = colors.transparent },
    LspSagaBorderTitle = { fg = colors.color7 },
    LspSagaCodeActionBorder = { fg = colors.color7 },
    LspSagaCodeActionContent = { fg = colors.color6 },
    LspSagaCodeActionTitle = { fg = colors.color7 },
    LspSagaDefPreviewBorder = { fg = colors.color4 },
    LspSagaFinderSelection = { fg = colors.color1 },
    LspSagaHoverBorder = { fg = colors.color7 },
    LspSagaRenameBorder = { fg = colors.color4 },
    LspSagaSignatureHelpBorder = { fg = colors.color11 },
    ReferencesCount = { fg = colors.color6 },
    ReferencesIcon = { fg = colors.color7 },
    TargetWord = { fg = colors.color7 },

    -- NeoVim
    healthError = { fg = colors.color11 },
    healthSuccess = { fg = colors.color4 },
    healthWarning = { fg = colors.color5 },

    -- BufferLine
    BufferLineFill = { bg = colors.transparent },
    BufferLineIndicatorSelected = { fg = colors.color5 },

    -- BetterWhitespace
    ExtraWhitespace = { fg = colors.color8, bg = colors.background },

    -- nvim-scrollbar
    ScrollbarCursorHandle = { bg = colors.color12 },
    ScrollbarHandle = { bg = colors.color2 },

    -- nvim-navic
    NavicIconsArray = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsBoolean = { bg = colors.transparent, fg = colors.color2 },
    NavicIconsClass = { bg = colors.transparent, fg = colors.color2 },
    NavicIconsConstant = { bg = colors.transparent, fg = colors.color14 },
    NavicIconsConstructor = { bg = colors.transparent, fg = colors.color9 },
    NavicIconsEnum = { bg = colors.transparent, fg = colors.color10 },
    NavicIconsEnumMember = { bg = colors.transparent, fg = colors.color7 },
    NavicIconsEvent = { bg = colors.transparent, fg = colors.color9 },
    NavicIconsField = { bg = colors.transparent, fg = colors.color8 },
    NavicIconsFile = { bg = colors.transparent, fg = colors.color2 },
    NavicIconsFunction = { bg = colors.transparent, fg = colors.color12 },
    NavicIconsInterface = { bg = colors.transparent, fg = colors.color11 },
    NavicIconsKey = { bg = colors.transparent, fg = colors.color5 },
    NavicIconsMethod = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsModule = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsNamespace = { bg = colors.transparent, fg = colors.color2 },
    NavicIconsNull = { bg = colors.transparent, fg = colors.color6 },
    NavicIconsNumber = { bg = colors.transparent, fg = colors.color1 },
    NavicIconsObject = { bg = colors.transparent, fg = colors.color4 },
    NavicIconsOperator = { bg = colors.transparent, fg = colors.color10 },
    NavicIconsPackage = { bg = colors.transparent, fg = colors.color3 },
    NavicIconsProperty = { bg = colors.transparent, fg = colors.color7 },
    NavicIconsString = { bg = colors.transparent, fg = colors.color15 },
    NavicIconsStruct = { bg = colors.transparent, fg = colors.color8 },
    NavicIconsTypeParameter = { bg = colors.transparent, fg = colors.color11 },
    NavicIconsVariable = { bg = colors.transparent, fg = colors.color13 },
    NavicSeparator = { bg = colors.transparent, fg = colors.foreground },
    NavicText = { bg = colors.transparent, fg = colors.foreground },
  }
end

return M
