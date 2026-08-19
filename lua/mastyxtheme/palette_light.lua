-- palette per la variante "light" del tema
-- sfondo chiaro con leggera tendenza all'azzurro, testo scuro
local M = {} 


-- colori principali
M.bg = "#e9eff5"          -- sfondo: chiaro, 
M.fg = "#05070a"           -- testo normale: nero pieno, massimo contrasto 

M.blue = "#14477d"         -- keyword (fn, use, mod, let, enum...) - 
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
M.bg_float = "#c3d2e0"      -- popup, floating window (leggermente più chiaro dello sfondo)
M.border = "#2c70bf"        -- bordi finestre/float -
M.grey = "#545f6b"          -- numeri di riga, testo secondario - 
M.grey_dark = "#c9d3dd"     -- whitespace, non-text, indent guide (invariato, resta discreto)

return M
