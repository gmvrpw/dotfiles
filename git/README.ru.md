# git

[English](README.md) | Русский

## Зависимости

```sh
sudo pacman -S git gnupg
```

## Заметки

Включена подпись коммитов (`commit.gpgsign = true`). На новой машине сначала импортируй
GPG-ключ, иначе `git commit` завершится ошибкой.
