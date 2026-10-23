# dotfiles

English | [Русский](README.ru.md)

Configs for Arch Linux + Hyprland, linked into `~` with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Each top-level directory is an independent stow package (module): paths inside it mirror `~`.
Dependencies, layout and details of a module are in its README; stow does not link these
READMEs.

| Module                   | Configures |
|--------------------------|------------|
| [zsh](zsh/README.md)     | shell |
| [git](git/README.md)     | git |
| [hypr](hypr/README.md)   | Hyprland, lock screen, idle, wallpaper, host profiles |
| [kitty](kitty/README.md) | terminal |
| [nvim](nvim/README.md)   | Neovim |
| [mise](mise/README.md)   | global tool versions, language servers and formatters |

## Installation

Install the dependencies of the modules you need (see their READMEs), then:

```sh
sudo pacman -S git stow
git clone https://github.com/gmvrpw/dotfiles ~/dotfiles
cd ~/dotfiles
stow -nv zsh git hypr kitty nvim mise  # dry run
stow zsh git hypr kitty nvim mise
```

Modules are independent: install only the ones you need. If stow reports a conflict, a file
already exists in `~`. Remove it, or take it into the repository with `stow --adopt <module>`
and review `git diff`.

## Usage

- `stow <module>` — link
- `stow -D <module>` — unlink
- `stow -R <module>` — relink after adding files
- new config: `mkdir -p <module>/.config && mv ~/.config/<app> <module>/.config/ && stow <module>`
