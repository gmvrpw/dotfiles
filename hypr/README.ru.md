# hypr

[English](README.md) | Русский

Hyprland с конфигом на Lua (0.56+), плюс hyprlock, hypridle и hyprpaper.

## Зависимости

```sh
sudo pacman -S hyprland hyprlock hypridle hyprpaper hyprlauncher hyprshot kitty \
  brightnessctl wireplumber adwaita-cursors gnome-themes-extra
```

## Слои

`hyprland.lua` загружает слои из `lua/` по порядку: `env`, `toolkit`, `monitors`,
`appearance`, `keymaps`, `gestures`, `capability`, `startup`. Если в `lua/hosts/<hostname>/`
есть файл с тем же именем, он загружается вместо общего слоя (`<hostname>` берётся из
`/etc/hostname`). Конфиги инструментов для хоста лежат в `conf/` с именем хоста в названии:
`conf/hypridle-<hostname>-*.conf`. Вспомогательные скрипты — в `bin/`, слои вызывают их по
полному пути.

## Хосты

Системная часть хоста (`/etc`, `/usr`) — отдельный pacman-пакет из репозитория
[hosts](https://github.com/gmvrpw/hosts). Пакеты личные, поэтому в AUR их нет: собираются из
клона.

### bookworm

Lenovo ThinkBook, Core Ultra 9 285H. Слои: `monitors` (встроенный экран, scale 1.6) и
`startup` (`bin/hypridle-switch` перезапускает hypridle с профилем от сети или от батареи при
подключении и отключении зарядки). Пакет `bookworm-host`: политика TLP с ограничением заряда
~80%, задержка гибернации и поддержка железа (камера, отпечаток, графика, звук).

```sh
git clone https://github.com/gmvrpw/hosts ~/Projects/hosts
cd ~/Projects/hosts/bookworm
makepkg -si
sudo systemctl enable --now tlp.service thermald.service
```
