-- signals
--[[
    widget::cpu_usage, usage in percent
]]--

local beautiful = require("beautiful")
local wibox     = require("wibox")

local lain      = require("lain")
local markup    = lain.util.markup

local cpuico = wibox.widget.textbox(markup.fg.color(color_blue, " "))
cpuico.font = beautiful.font_icon.." 16"


local lain_cpu = lain.widget.cpu {
    timeout = 2,
    settings = function()
        widget.markup = markup.bold(cpu_now.usage..'%')
        awesome.emit_signal("widget::cpu_usage", cpu_now.usage)
    end
}
lain_cpu.widget.align = "center"
lain_cpu.update()

local cpuwidget = wibox.widget {
    layout = wibox.layout.fixed.horizontal,
    cpuico,
    lain_cpu,
}

return cpuwidget