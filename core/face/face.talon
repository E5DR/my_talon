
face off: mode.disable("face")
face on: mode.enable("face")

face(raise_eyebrows): mouse_click()

#face(pucker_lips_right): key(pagedown)
face(pucker_lips_right:start): user.mouse_scroll_down_continuous()
face(pucker_lips_right:stop): user.mouse_scroll_stop()

#face(pucker_lips_left): key(pageup)
face(pucker_lips_left:start): user.mouse_scroll_up_continuous()
face(pucker_lips_left:stop): user.mouse_scroll_stop()