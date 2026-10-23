# zsh

English | [Русский](README.ru.md)

## Dependencies

```sh
sudo pacman -S zsh
# optional: gpg-agent as ssh-agent, tool versions (see ../mise)
sudo pacman -S gnupg mise
```

Optional dependencies are used only when installed.

## Notes

- History is stored in `~/.local/state/zsh/history`.
- `PATH` includes `~/.pub-cache/bin` (`dart pub global` executables) and `~/.jsvu/bin` (JS
  engines installed by jsvu).
