-- palette per la variante "cappuccino" del tema
-- sfondo chiaro con tendenza al giallo/marrone caldo (tipo cappuccino), testo scuro
local M = {}

-- colori principali
M.bg = "#f7f1d9"           -- sfondo: crema chiaro, caldo
M.fg = "#2e2a17"           -- testo normale: bruno scuro, alto contrasto

M.blue = "#1f5f8b"         -- keyword (fn, use, mod, let, enum...)
M.light_blue = "#3d76a8"   -- commenti, link, info

M.orange = "#a5540a"       -- parentesi / delimitatori
M.light_orange = "#b86b1f" -- stringhe

M.red = "#9c2b1f"          -- errori
M.light_red = "#b8543f"    -- funzioni

M.green = "#4b6b1f"
M.light_green = "#6b8a2f"  -- proprietà/campi

M.yellow = "#7a5c00"       -- statement/conditional
M.light_yellow = "#a67c00" -- todo

-- tonalità derivate per l'interfaccia
M.bg_dark = "#ece2bd"       -- statusline / tabline
M.bg_highlight = "#f0e6c4"  -- cursorline, colorcolumn, folded
M.bg_visual = "#e8d9a0"     -- selezione visuale
M.bg_float = "#efe3ba"      -- popup, floating window
M.border = "#b89b3a"        -- bordi finestre/float
M.grey = "#6b6142"          -- numeri di riga, testo secondario
M.grey_dark = "#ddd0a0"     -- whitespace, non-text, indent guide

return M
