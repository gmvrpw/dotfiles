local leader = "SUPER"

local terminal = "kitty"
local launcher = "hyprlauncher"
local lock     = "hyprlock -c ~/.config/hypr/conf/hyprlock.conf"
local shot     = "hyprshot -o ~/Pictures/Screenshots -m "

hl.config({
    input = {
        kb_layout  = "us,ru",
        kb_options = "grp:win_space_toggle",

        follow_mouse = 1,
    },
})

-- Apps
hl.bind(leader .. " + Q",         hl.dsp.exec_cmd(terminal))
hl.bind(leader .. " + Return",    hl.dsp.exec_cmd(launcher))
hl.bind(leader .. " + SHIFT + L", hl.dsp.exec_cmd(lock))

-- Windows
hl.bind(leader .. " + S",         hl.dsp.layout("togglesplit"))
hl.bind(leader .. " + F",         hl.dsp.window.fullscreen())
hl.bind(leader .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(leader .. " + SHIFT + Q", hl.dsp.window.close())

hl.bind(leader .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(leader .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(leader .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(leader .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(leader .. " + mouse:272",         hl.dsp.window.drag(),   { mouse = true })
hl.bind(leader .. " + SHIFT + mouse:272", hl.dsp.window.resize(), { mouse = true })

-- Workspaces
for i = 1, 10 do
    local key = i % 10 -- workspace 10 is on key 0
    hl.bind(leader .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(leader .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Screenshots: saved to ~/Pictures/Screenshots and copied to the clipboard.
-- The laptop's PrtSc key sends Super+Shift+S (the Windows snipping shortcut) instead of Print.
hl.bind("Print",                    hl.dsp.exec_cmd(shot .. "region"))
hl.bind(leader .. " + SHIFT + S",   hl.dsp.exec_cmd(shot .. "region"))
hl.bind("SHIFT + Print",            hl.dsp.exec_cmd(shot .. "window"))

-- Media keys
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- Session
hl.bind(leader .. " + SHIFT + C", hl.dsp.exit())
