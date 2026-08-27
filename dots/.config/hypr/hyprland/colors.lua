hl.config({
    general = {
        col = {
            active_border   = "rgba(89b4faee)",
            inactive_border = "rgba(31324488)",
        },
    },
    misc = {
        background_color = "rgba(121318FF)",
    },
})

hl.window_rule({ -- not sure how to syntax "pin 1"
    match        = { pin = 1 },
    border_color = "rgba(afc6ffAA) rgba(afc6ff77)",
})
