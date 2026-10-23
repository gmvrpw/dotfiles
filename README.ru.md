# dotfiles

[English](README.md) | Русский

Конфиги для Arch Linux + Hyprland. Раскладываются в `~` через [GNU Stow](https://www.gnu.org/software/stow/).

## Структура

Каждая папка верхнего уровня — независимый stow-пакет (модуль): пути внутри повторяют
структуру `~`. Зависимости, устройство и особенности модуля описаны в его README; stow эти
README не раскладывает.

| Модуль                      | Что настраивает |
|-----------------------------|-----------------|
| [zsh](zsh/README.ru.md)     | оболочку |
| [git](git/README.ru.md)     | git |
| [hypr](hypr/README.ru.md)   | Hyprland, экран блокировки, сон, обои, профили хостов |
| [kitty](kitty/README.ru.md) | терминал |
| [nvim](nvim/README.ru.md)   | Neovim |
| [mise](mise/README.ru.md)   | глобальные версии инструментов, LSP-серверы и форматтеры |

## Установка

Поставь зависимости нужных модулей (см. их README), затем:

```sh
sudo pacman -S git stow
git clone https://github.com/gmvrpw/dotfiles ~/dotfiles
cd ~/dotfiles
stow -nv zsh git hypr kitty nvim mise  # сухой прогон
stow zsh git hypr kitty nvim mise
```

Модули независимы: можно поставить только нужные. Если stow сообщает о конфликте, в `~` уже
лежит файл. Удали его или забери в репозиторий через `stow --adopt <модуль>` и проверь
`git diff`.

## Использование

- `stow <модуль>` — подключить
- `stow -D <модуль>` — отключить
- `stow -R <модуль>` — пересоздать ссылки после добавления файлов
- новый конфиг: `mkdir -p <модуль>/.config && mv ~/.config/<app> <модуль>/.config/ && stow <модуль>`
