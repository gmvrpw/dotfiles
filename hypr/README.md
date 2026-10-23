# hypr

English | [Русский](README.ru.md)

Hyprland with a Lua config (0.56+), plus hyprlock, hypridle and hyprpaper.

## Dependencies

```sh
sudo pacman -S hyprland hyprlock hypridle hyprpaper hyprlauncher hyprshot kitty \
  brightnessctl wireplumber adwaita-cursors gnome-themes-extra
```

## Layers

`hyprland.lua` loads layers from `lua/` in order: `env`, `toolkit`, `monitors`, `appearance`,
`keymaps`, `gestures`, `capability`, `startup`. If `lua/hosts/<hostname>/` has a file with the
same name, it is loaded instead of the common layer (`<hostname>` comes from `/etc/hostname`).
Tool configs for a host live in `conf/` with the host name in the file name:
`conf/hypridle-<hostname>-*.conf`. Helper scripts live in `bin/`; layers call them by full path.

## Hosts

The system part of a host (`/etc`, `/usr`) is a separate pacman package from the
[hosts](https://github.com/gmvrpw/hosts) repository. The packages are personal, so they are not
on the AUR: build them from a clone.

### bookworm

Lenovo ThinkBook, Core Ultra 9 285H. Layers: `monitors` (built-in display at scale 1.6) and
`startup` (`bin/hypridle-switch` restarts hypridle with the AC or battery profile when the
charger is plugged or unplugged). Package `bookworm-host`: TLP policy with a ~80% charge cap,
hibernate delay and hardware support (camera, fingerprint, graphics, audio).

```sh
git clone https://github.com/gmvrpw/hosts ~/Projects/hosts
cd ~/Projects/hosts/bookworm
makepkg -si
sudo systemctl enable --now tlp.service thermald.service
```
