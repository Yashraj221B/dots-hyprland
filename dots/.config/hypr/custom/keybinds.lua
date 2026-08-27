hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )
hl.bind("SUPER + Z", hl.dsp.window.drag(), { mouse = true, description = "Window: Move" })
hl.bind("SUPER + X", hl.dsp.window.resize(), { mouse = true, description = "Window: Resize" })
hl.bind("ALT + TAB", hl.dsp.window.cycle_next(), { description = "Window: Cycle next" })
