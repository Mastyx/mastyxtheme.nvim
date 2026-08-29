-- variante "cappuccino" del tema
-- stessa struttura di init.lua ma con palette_cappuccino: sfondo chiaro caldo (crema/cappuccino),
-- testo bruno scuro, keyword in blu, errori in rosso, parentesi in arancio
local M = {}

function M.setup()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "light"
  vim.g.colors_name = "mastyxtheme-cappuccino"

  local c = require("mastyxtheme.palette_cappuccino")
  local hl = vim.api.nvim_set_hl

  -- ============================================================
  -- Editor UI di base
  -- ============================================================
  hl(0, "Normal", { fg = c.fg, bg = c.bg, bold = true})
  hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_float })
  hl(0, "NormalNC", { fg = c.fg, bg = c.bg })
  hl(0, "FloatBorder", { fg = c.border, bg = c.bg_float })
  hl(0, "FloatTitle", { fg = c.blue, bg = c.bg_float, bold = true })

  hl(0, "Cursor", { fg = c.bg, bg = c.fg })
  hl(0, "CursorLine", { bg = c.bg_highlight })
  hl(0, "CursorLineNr", { fg = c.blue, bold = true })
  hl(0, "CursorColumn", { bg = c.bg_highlight })
  hl(0, "LineNr", { fg = c.grey })
  hl(0, "SignColumn", { fg = c.grey, bg = c.bg })
  hl(0, "ColorColumn", { bg = c.bg_highlight })

  hl(0, "Visual", { bg = c.bg_visual })
  hl(0, "VisualNOS", { bg = c.bg_visual })

  hl(0, "Search", { fg = c.fg, bg = c.light_yellow })
  hl(0, "IncSearch", { fg = c.bg, bg = c.orange })
  hl(0, "CurSearch", { fg = c.bg, bg = c.orange })
  hl(0, "Substitute", { fg = c.bg, bg = c.red })

  hl(0, "MatchParen", { fg = c.orange, bold = true, underline = true })

  hl(0, "StatusLine", { fg = c.fg, bg = c.bg_dark })
  hl(0, "StatusLineNC", { fg = c.grey, bg = c.bg_dark })
  hl(0, "WinSeparator", { fg = c.border, bg = c.bg })
  hl(0, "VertSplit", { fg = c.border, bg = c.bg })

  hl(0, "TabLine", { fg = c.grey, bg = c.bg_dark })
  hl(0, "TabLineSel", { fg = c.fg, bg = c.bg, bold = true })
  hl(0, "TabLineFill", { bg = c.bg_dark })

  hl(0, "Pmenu", { fg = c.fg, bg = c.bg_float })
  hl(0, "PmenuSel", { fg = c.bg, bg = c.blue, bold = true })
  hl(0, "PmenuSbar", { bg = c.bg_dark })
  hl(0, "PmenuThumb", { bg = c.grey })

  hl(0, "Folded", { fg = c.grey, bg = c.bg_highlight, italic = true })
  hl(0, "FoldColumn", { fg = c.grey, bg = c.bg })

  hl(0, "NonText", { fg = c.grey_dark })
  hl(0, "Whitespace", { fg = c.grey_dark })
  hl(0, "EndOfBuffer", { fg = c.bg })
  hl(0, "SpecialKey", { fg = c.grey_dark })

  hl(0, "Title", { fg = c.blue, bold = true })
  hl(0, "Directory", { fg = c.blue })

  hl(0, "ErrorMsg", { fg = c.red, bold = true })
  hl(0, "WarningMsg", { fg = c.orange, bold = true })
  hl(0, "ModeMsg", { fg = c.fg })
  hl(0, "MoreMsg", { fg = c.green })
  hl(0, "Question", { fg = c.blue })

  hl(0, "DiffAdd", { fg = c.green, bg = c.bg_highlight })
  hl(0, "DiffChange", { fg = c.yellow, bg = c.bg_highlight })
  hl(0, "DiffDelete", { fg = c.red, bg = c.bg_highlight })
  hl(0, "DiffText", { fg = c.fg, bg = c.bg_visual })

  hl(0, "SpellBad", { sp = c.red, undercurl = true })
  hl(0, "SpellCap", { sp = c.yellow, undercurl = true })
  hl(0, "SpellLocal", { sp = c.blue, undercurl = true })
  hl(0, "SpellRare", { sp = c.orange, undercurl = true })

  -- ============================================================
  -- Sintassi generica (per linguaggi senza Treesitter)
  -- ============================================================
  hl(0, "Comment", { fg = c.light_blue, italic = true })

  hl(0, "Constant", { fg = c.orange })
  hl(0, "String", { fg = c.light_orange })
  hl(0, "Character", { fg = c.light_orange })
  hl(0, "Number", { fg = c.light_orange })
  hl(0, "Boolean", { fg = c.orange, bold = true })
  hl(0, "Float", { fg = c.light_orange })

  hl(0, "Function", { fg = c.light_red })
  hl(0, "Statement", { fg = c.blue, bold = true })
  hl(0, "Conditional", { fg = c.blue })
  hl(0, "Repeat", { fg = c.blue })
  hl(0, "Label", { fg = c.blue })
  hl(0, "Operator", { fg = c.fg })
  hl(0, "Keyword", { fg = c.blue, bold = true })
  hl(0, "Exception", { fg = c.red, bold = true })

  hl(0, "Identifier", { fg = c.fg })
  hl(0, "PreProc", { fg = c.blue })
  hl(0, "Include", { fg = c.blue })
  hl(0, "Define", { fg = c.blue })
  hl(0, "Macro", { fg = c.light_red })
  hl(0, "PreCondit", { fg = c.blue })

  hl(0, "Type", { fg = c.light_red, bold = true })
  hl(0, "StorageClass", { fg = c.blue })
  hl(0, "Structure", { fg = c.light_red })
  hl(0, "Typedef", { fg = c.light_red })

  hl(0, "Special", { fg = c.orange })
  hl(0, "SpecialChar", { fg = c.orange })
  hl(0, "Tag", { fg = c.blue })
  hl(0, "Delimiter", { fg = c.fg })
  hl(0, "Underlined", { fg = c.blue, underline = true })
  hl(0, "Ignore", { fg = c.grey })
  hl(0, "Error", { fg = c.bg, bg = c.red, bold = true })
  hl(0, "Todo", { fg = c.fg, bg = c.light_yellow, bold = true })

  -- ============================================================
  -- Diagnostica LSP
  -- ============================================================
  hl(0, "DiagnosticError", { fg = c.red })
  hl(0, "DiagnosticWarn", { fg = c.yellow })
  hl(0, "DiagnosticInfo", { fg = c.blue })
  hl(0, "DiagnosticHint", { fg = c.green })
  hl(0, "DiagnosticOk", { fg = c.green })

  hl(0, "DiagnosticUnderlineError", { sp = c.red, undercurl = true })
  hl(0, "DiagnosticUnderlineWarn", { sp = c.yellow, undercurl = true })
  hl(0, "DiagnosticUnderlineInfo", { sp = c.blue, undercurl = true })
  hl(0, "DiagnosticUnderlineHint", { sp = c.green, undercurl = true })

  hl(0, "DiagnosticVirtualTextError", { fg = c.red, bg = c.bg_highlight })
  hl(0, "DiagnosticVirtualTextWarn", { fg = c.yellow, bg = c.bg_highlight })
  hl(0, "DiagnosticVirtualTextInfo", { fg = c.blue, bg = c.bg_highlight })
  hl(0, "DiagnosticVirtualTextHint", { fg = c.green, bg = c.bg_highlight })

  -- ============================================================
  -- Treesitter
  -- ============================================================
  hl(0, "@variable", { fg = c.fg })
  hl(0, "@variable.member", { fg = c.light_green })
  hl(0, "@variable.parameter", { fg = c.fg, italic = true })
  hl(0, "@variable.builtin", { fg = c.red, italic = true })

  hl(0, "@constant", { fg = c.orange })
  hl(0, "@constant.builtin", { fg = c.orange, bold = true })
  hl(0, "@boolean", { fg = c.orange, bold = true })
  hl(0, "@number", { fg = c.light_orange })
  hl(0, "@float", { fg = c.light_orange })

  hl(0, "@string", { fg = c.light_orange })
  hl(0, "@string.escape", { fg = c.red })
  hl(0, "@character", { fg = c.light_orange })

  hl(0, "@function", { fg = c.light_red })
  hl(0, "@function.builtin", { fg = c.light_red, italic = true })
  hl(0, "@function.call", { fg = c.light_red })
  hl(0, "@method", { fg = c.light_red })
  hl(0, "@method.call", { fg = c.light_red })
  hl(0, "@constructor", { fg = c.blue })
  hl(0, "@parameter", { fg = c.fg, italic = true })

  -- keyword: fn, use, mod, let, enum, ecc. -> blu
  hl(0, "@keyword", { fg = c.blue, bold = true })
  hl(0, "@keyword.function", { fg = c.blue, bold = true })
  hl(0, "@keyword.return", { fg = c.blue, bold = true })
  hl(0, "@keyword.operator", { fg = c.blue })
  hl(0, "@conditional", { fg = c.blue })
  hl(0, "@repeat", { fg = c.blue })
  hl(0, "@exception", { fg = c.red, bold = true })

  hl(0, "@operator", { fg = c.fg })

  -- parentesi/delimitatori -> arancio
  hl(0, "@punctuation.bracket", { fg = c.orange })
  hl(0, "@punctuation.delimiter", { fg = c.fg })
  hl(0, "@punctuation.special", { fg = c.orange })

  hl(0, "@type", { fg = c.blue, bold = true })
  hl(0, "@type.builtin", { fg = c.blue, italic = true })
  hl(0, "@storageclass", { fg = c.blue })
  hl(0, "@attribute", { fg = c.orange })
  hl(0, "@property", { fg = c.light_green })
  hl(0, "@field", { fg = c.light_green })

  hl(0, "@namespace", { fg = c.blue })
  hl(0, "@module", { fg = c.blue })
  hl(0, "@include", { fg = c.blue })

  hl(0, "@tag", { fg = c.blue })
  hl(0, "@tag.attribute", { fg = c.light_green, italic = true })
  hl(0, "@tag.delimiter", { fg = c.fg })

  hl(0, "@comment", { fg = c.light_blue, italic = true })
  hl(0, "@comment.todo", { fg = c.fg, bg = c.light_yellow, bold = true })
  hl(0, "@comment.warning", { fg = c.bg, bg = c.yellow, bold = true })
  hl(0, "@comment.error", { fg = c.bg, bg = c.red, bold = true })

  hl(0, "@markup.heading", { fg = c.blue, bold = true })
  hl(0, "@markup.strong", { bold = true })
  hl(0, "@markup.italic", { italic = true })
  hl(0, "@markup.link", { fg = c.light_green, underline = true })
  hl(0, "@markup.raw", { fg = c.light_orange })

  -- ============================================================
  -- LSP semantic tokens
  -- ============================================================
  hl(0, "@lsp.type.class", { fg = c.light_red })
  hl(0, "@lsp.type.interface", { fg = c.light_red, italic = true })
  hl(0, "@lsp.type.enum", { fg = c.light_red })
  hl(0, "@lsp.type.parameter", { fg = c.fg, italic = true })
  hl(0, "@lsp.type.property", { fg = c.light_green })
  hl(0, "@lsp.type.variable", { fg = c.fg })
  hl(0, "@lsp.typemod.variable.readonly", { fg = c.orange })

  -- ============================================================
  -- Integrazioni plugin
  -- ============================================================
  hl(0, "GitSignsAdd", { fg = c.green })
  hl(0, "GitSignsChange", { fg = c.yellow })
  hl(0, "GitSignsDelete", { fg = c.red })

  hl(0, "NvimTreeFolderIcon", { fg = c.blue })
  hl(0, "NvimTreeFolderName", { fg = c.fg })
  hl(0, "NvimTreeOpenedFolderName", { fg = c.blue, bold = true })
  hl(0, "NvimTreeIndentMarker", { fg = c.grey_dark })
  hl(0, "NeoTreeDirectoryIcon", { fg = c.blue })
  hl(0, "NeoTreeDirectoryName", { fg = c.fg })

  hl(0, "TelescopeBorder", { fg = c.border })
  hl(0, "TelescopePromptBorder", { fg = c.border })
  hl(0, "TelescopeSelection", { bg = c.bg_visual })
  hl(0, "TelescopeMatching", { fg = c.orange, bold = true })

  hl(0, "WhichKey", { fg = c.blue, bold = true })
  hl(0, "WhichKeyGroup", { fg = c.light_green })
  hl(0, "WhichKeyDesc", { fg = c.fg })
  hl(0, "WhichKeySeparator", { fg = c.grey })

  -- nvim-cmp
  hl(0, "CmpItemAbbr", { fg = c.fg })
  hl(0, "CmpItemAbbrMatch", { fg = c.blue, bold = true })
  hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.blue, bold = true })
  hl(0, "CmpItemAbbrDeprecated", { fg = c.grey, strikethrough = true })
  hl(0, "CmpItemKind", { fg = c.light_green })
  hl(0, "CmpItemMenu", { fg = c.grey, italic = true })
end

return M
