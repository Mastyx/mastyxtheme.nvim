-- qui vanno inseriti i colori 
--
local M = {}


--palette principale 
M.bg = "#050D12" -- sfondo 
M.fg = "#e5e6e1"

M.blue = "#2f7fd4" 
M.light_blue = "#6f9af2"
M.light_orange = "#ffda8b"
M.orange = "#ee9245"
M.light_red = "#c58067"
M.red = "#c72f00"
M.green = "#408243"
M.light_green = "#b7d288"
M.yellow = "#cfbb67"
M.light_yellow = "#eee6c9"

-- tonalita per cursorline pop up e bordi 
M.bg_dark = "#03080b"       -- statusline / tabline
M.bg_highlight = "#0d1a22"  -- cursorline, colorcolumn, folded
M.bg_visual = "#123244"     -- selezione visuale, diff text
M.bg_float = "#081116"      -- popup, floating window
M.border = "#1b2b33"        -- bordi finestre/float
M.grey = "#5c6773"          -- numeri di riga, commenti secondari
M.grey_dark = "#2c343b"     -- whitespace, non-text, indent guide

return M
