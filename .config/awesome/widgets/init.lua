local gears = require("gears")
local wibox = require("wibox")

local separator = wibox.widget {
    widget = wibox.widget.separator,
    orientation = "vertical",
    shape = gears.shape.rounded_rect,
    color = color_surface0,
    forced_height = 18,
    forced_width = 4,
}
separator = v_centered_widget(separator)

local alsa = require("widgets.alsa")

return {
    separator = separator,
    music = require("widgets.playerctl"),
    musicplayer = require("widgets.musicplayer").widget,
    mem = require("widgets.mem"),
    cpu = require("widgets.cpu"),
    temp = require("widgets.temperature"),
    weather = require("widgets.weather"),
    alsa = alsa.volumewidget,
    volumeslider = alsa.volume_slider,
    focused_client = require("widgets.focused_client_name"),
}

-- Keyboard map indicator and switcher
--mykeyboardlayout = awful.widget.keyboardlayout()

--[[
bling.widget.window_switcher.enable {
    type = "thumbnail",
    hide_window_switcher_key = "Escape",
    minimize_key = "n",
    unminimize_key = "N",
    kill_client_key = "q",
    cycle_key = "Tab",
    previous_key = "Right",
    next_key = "Left",
    vim_previous_key = "l",
    vim_next_key = "h",
    cycleClientsByIdx = awful.client.focus.byidx,
    filterClients = awful.widget.tasklist.filter.currenttags,
}
]]--