# Left button
gamepad(l1:down):              user.foot_switch_down_event(0)
gamepad(l1:up):                user.foot_switch_up_event(0)

# Center button
gamepad(start:down):              user.foot_switch_down_event(1)
gamepad(start:up):                user.foot_switch_up_event(1)

# Right button
gamepad(r1:down):              user.foot_switch_down_event(2)
gamepad(r1:up):                user.foot_switch_up_event(2)

# Top button
gamepad(select:down):              user.foot_switch_down_event(3)
gamepad(select:up):                user.foot_switch_up_event(3)

# Left+Right button (simultaneously)
# foot pedal sends single event as if it were a separate button
# Note: unfortunately the firmware does not block the key events from the individual key presses
gamepad(l2:down):               user.foot_switch_down_event(4)
gamepad(l2:up):                 user.foot_switch_up_event(4)
