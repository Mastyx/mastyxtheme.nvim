# mastyxtheme.nvim

Un colorscheme minimale e personalizzato per Neovim, scritto in Lua con supporto Treesitter.

![screenshot](./mastyxtheme.png)
normale version
![screenshot](./mastyxtheme_light.png)
light version

## Installazione

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Mastyx/mastyxtheme.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("mastyxtheme")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "Mastyx/mastyxtheme.nvim",
  config = function()
    vim.cmd.colorscheme("mastyxtheme")
  end,
})
```

### Manuale

```bash
git clone https://github.com/Mastyx/mastyxtheme.nvim ~/.config/nvim/pack/themes/start/mastyxtheme.nvim
```

Poi in Neovim:

```
:colorscheme mastyxtheme
```

## Struttura del progetto

```
mastyxtheme.nvim/
├── colors/
│   └── mastyxtheme.lua     -- entry point per :colorscheme
├── lua/
│   └── mastyxtheme/
│       ├── init.lua        -- logica di setup e highlight groups
│       └── palette.lua     -- definizione dei colori
├── README.md
└── LICENSE
```

## Requisiti

- Neovim >= 0.8
- Terminale con supporto true color (`termguicolors`)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) per l'highlighting completo

## Palette

| Colore     | Hex       |
| ---------- | --------- |
| Background | `#181825` |
| Foreground | `#cdd6f4` |
| Red        | `#c72f00` |
| Green      | `#408243` |
| Yellow     | `#cfbb67` |
| Orange     | `#ee9245` |
| Light Blue | `#6f9af2` |

## Licenza

[MIT](./LICENSE)
