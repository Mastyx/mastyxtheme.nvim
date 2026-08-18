-- logica principale e setup opzionale
-- il file prende i colore da palette e li applica

local M = {}

function M.setup()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
      vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "mastyxtheme"

  local c = require("mastyxtheme.palette")
  local hl = vim.api.nvim_set_hl
  
  -- Base Editor -- 
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "Comment", {fg = c.light_blue, italic = true })

  -- per linguaggi senza threesitter 
  hl(0, "Constant", {fg = c.orange})
  hl(0, "String", {fg = c.light_orange})
  hl(0, "Function", {fg = c.light_red})
  hl(0, "Statement", {fg = c.yellow, bold=true})
  hl(0, "Identifier", {fg = c.light_green})
  hl(0, "Keyword", {fg= c.blue})
  hl(0, "Type", {fg = c.red, bold=true})
  hl(0, "Special", {fg=c.red})
  hl(0, "Error", {fg= "#ffffff", bg = c.red})
  -- threesitter 
  hl(0, "@variable", {fg = c.green})
  hl(0, "@variable.member", {fg=c.light_green})

 end



