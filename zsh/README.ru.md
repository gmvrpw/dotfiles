# zsh

[English](README.md) | Русский

## Зависимости

```sh
sudo pacman -S zsh
# необязательно: gpg-agent в роли ssh-agent, версии инструментов (см. ../mise)
sudo pacman -S gnupg mise
```

Необязательные зависимости подключаются, только если установлены.

## Заметки

- История хранится в `~/.local/state/zsh/history`.
- В `PATH` добавлены `~/.pub-cache/bin` (утилиты из `dart pub global`) и `~/.jsvu/bin`
  (JS-движки от jsvu).
