# git

English | [Русский](README.ru.md)

## Dependencies

```sh
sudo pacman -S git gnupg
```

## Notes

Commit signing is on (`commit.gpgsign = true`). On a new machine import your GPG key first,
otherwise `git commit` fails.
