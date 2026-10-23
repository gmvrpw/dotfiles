-- GTK
hl.env("GDK_SCALE", "1")
hl.env("GDK_BACKEND", "wayland,x11,*")

hl.exec_cmd('gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"')   -- GTK3
hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"') -- GTK4

-- Qt
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "gtk3")
