# nvim

English | [Русский](README.ru.md)

Neovim 0.12+ with [lazy.nvim](https://github.com/folke/lazy.nvim): plugins install themselves on
first start, at the versions pinned in `lazy-lock.json`.

## Dependencies

```sh
sudo pacman -S neovim git tree-sitter-cli gcc
```

Icons (neo-tree, diagnostics) need a Nerd Font in the terminal; the [kitty](../kitty/README.md)
module uses Monaspace NF.

### Language servers and formatters

Optional: a language server starts only if it is installed, and conform warns on save when a
formatter is missing. The lists are in `lua/config/lsp/init.lua` and `lua/plugins/conform.lua`.

They are declared in the [mise](../mise/README.md) module together with the language toolchains
and installed with `mise install`. Only the C and LaTeX tools come from system packages:

```sh
sudo pacman -S clang texlive-binextra  # clangd, clang-format; latexindent
```

Formatting runs on save and on `<Space>f` through
[conform.nvim](https://github.com/stevearc/conform.nvim).
