--[[ 
--
--da correggere i colori non poco visibili perche troppo chiari 
--
--palette per la variante "light" del tema
-- sfondo chiaro con leggera tendenza all'azzurro, testo scuro
local M = {}

-- colori principali
M.bg = "#e9eff5"          -- sfondo: chiaro, non troppo luminoso, tendente all'azzurro
M.fg = "#12161b"           -- testo normale: quasi nero

M.blue = "#1d5fa8"         -- keyword (fn, use, mod, let, enum...)
M.light_blue = "#3b7dd8"   -- commenti, link, info
M.
M.orange = "#c9660a"       -- parentesi / delimitatori
M.light_orange = "#e08b2e" -- stringhe

M.red = "#b3261e"          -- errori
M.light_red = "#c8564a"    -- funzioni

M.green = "#2e7d4f"
M.light_green = "#4f9d6e"  -- proprietà/campi

M.yellow = "#9c7a12"       -- statement/conditional (oro scuro, leggibile su chiaro)
M.light_yellow = "#b89a3a" -- todo

-- tonalità derivate per l'interfaccia
M.bg_dark = "#dbe4ee"       -- statusline / tabline
M.bg_highlight = "#dde6f0"  -- cursorline, colorcolumn, folded
M.bg_visual = "#c7d9ee"     -- selezione visuale
M.bg_float = "#f2f6fa"      -- popup, floating window (leggermente più chiaro dello sfondo)
M.border = "#b8c6d6"        -- bordi finestre/float
M.grey = "#6b7785"          -- numeri di riga, testo secondario
M.grey_dark = "#c9d3dd"     -- whitespace, non-text, indent guide (chiaro e discreto)

return M
  --]]

-- palette per la variante "light" del tema
-- sfondo chiaro con leggera tendenza all'azzurro, testo scuro
local M = {}

-- colori principali
M.bg = "#e9eff5"          -- sfondo: chiaro, non troppo luminoso, tendente all'azzurro
M.fg = "#05070a"           -- testo normale: nero pieno, massimo contrasto sullo sfondo chiaro

M.blue = "#14477d"         -- keyword (fn, use, mod, let, enum...) - un tono più scuro
M.light_blue = "#2c62b3"   -- commenti, link, info - un tono più scuro

M.orange = "#a8540a"       -- parentesi / delimitatori - un tono più scuro
M.light_orange = "#c07322" -- stringhe - un tono più scuro

M.red = "#8f1e18"          -- errori - un tono più scuro
M.light_red = "#a8453b"    -- funzioni - un tono più scuro

M.green = "#256640"
M.light_green = "#3e7d57"  -- proprietà/campi - un tono più scuro

M.yellow = "#7d620f"       -- statement/conditional - un tono più scuro
M.light_yellow = "#967d2e" -- todo - un tono più scuro

-- tonalità derivate per l'interfaccia
M.bg_dark = "#dbe4ee"       -- statusline / tabline
M.bg_highlight = "#dde6f0"  -- cursorline, colorcolumn, folded
M.bg_visual = "#c7d9ee"     -- selezione visuale
M.bg_float = "#f2f6fa"      -- popup, floating window (leggermente più chiaro dello sfondo)
M.border = "#9aacbe"        -- bordi finestre/float - un tono più scuro, più definito
M.grey = "#545f6b"          -- numeri di riga, testo secondario - un tono più scuro
M.grey_dark = "#c9d3dd"     -- whitespace, non-text, indent guide (invariato, resta discreto)

return M
