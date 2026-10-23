hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper -c ~/.config/hypr/conf/hyprpaper.conf")
    hl.exec_cmd("~/.config/hypr/bin/hypridle-switch ~/.config/hypr/conf/hypridle-bookworm-ac.conf ~/.config/hypr/conf/hypridle-bookworm-battery.conf")
end)
