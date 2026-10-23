# nvim

[English](README.md) | Русский

Neovim 0.12+ на [lazy.nvim](https://github.com/folke/lazy.nvim): плагины ставятся сами при
первом запуске по версиям из `lazy-lock.json`.

## Зависимости

```sh
sudo pacman -S neovim git tree-sitter-cli gcc
```

Для иконок (neo-tree, диагностика) терминалу нужен Nerd Font; модуль [kitty](../kitty/README.ru.md)
использует Monaspace NF.

### LSP-серверы и форматтеры

Необязательны: сервер запускается, только если установлен, а conform предупреждает при
сохранении о недостающем форматтере. Списки — в `lua/config/lsp/init.lua` и
`lua/plugins/conform.lua`.

Они объявлены в модуле [mise](../mise/README.ru.md) вместе с тулчейнами языков и ставятся
через `mise install`. Только инструменты для C и LaTeX берутся из системных пакетов:

```sh
sudo pacman -S clang texlive-binextra  # clangd, clang-format; latexindent
```

Форматирование — при сохранении и по `<Space>f` через
[conform.nvim](https://github.com/stevearc/conform.nvim).
