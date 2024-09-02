mode: user.game
app: ksp
-
settings():
    key_wait = 6
# https://wiki.kerbalspaceprogram.com/wiki/Key_bindings

# System/UI Controls
######################################
quicksave | quicky:                       key(f5)
named quicksave | nick | nicky:
    key("rshift:down")
    key(f5)
    key("rshift:up")
load quicksave | reset:
    key(f9:down)
    sleep(4s)
    key(f9:up)
load named (quicksave | save):            key(rshift-f9)

# view
(drag | pull) view | pew:                 user.mouse_drag(1)
look {user.arrow_key}:                    key(arrow_key)
look {user.arrow_key} <number>:
    key(arrow_key)
    repeat(number - 1)

release:                                  user.mouse_drag_end()
options:                                  user.mouse_click(1)

# navigation
# TODO: create a capture for navigation directions

# linear movements
# [(move | turn)] (north | south | east | west) [<number>]
[(move | turn)] (north | nor | no):       key(w)
[(move | turn)] (north | nor | no) <number>:
    key(w)
    repeat(number - 1)
[(move | turn)] (south | so):             key(s)
[(move | turn)] (south | so) <number>:
    key(s)
    repeat(number - 1)
[(move | turn)] (east | ease | aye):      key(d)
[(move | turn)] (east | ease | aye) <number>:
    key(d)
    repeat(number - 1)
[(move | turn)] (west | wet | we):        key(a)
[(move | turn)] (west | wet | we) <number>:
    key(a)
    repeat(number - 1)

# roll / turns
# (roll | turn) (left | right) [<number>]
(roll | turn) left | cou | counterclock:  key(e)
((roll | turn) left | cou | counterclock) <number>:
    key(e)
    repeat(number - 1)
(roll | turn) right | clock | clo:        key(q)
((roll | turn) right | clock | clo) <number>:
    key(q)
    repeat(number - 1)

# still missing: RCS thrusters


    

# Flight Controls
######################################
toggle map:                               key(m)

# navigation
toggle navball:                           key(numpad_.)
toggle RCS:                               key(r)
toggle SAS | [toggle] stabilize:          key(t)

# time warp
warp faster | [more] warp:                key(.)
warp slower | less warp:                  key(,)
stop [time] warp | warp stop:             key(/)

# actions
toggle [landing] gear:                    key(g)
toggle lights:                            key(f8)
# no effect?
# action <number_small>:                    key(number_small)
action <number_small>:
    app.notify(number_small)
    key(number_small)

# engine
full power | zoom:                        key(z)
more power | push:                        key(u)
(more power | push) <number>:
    key(shift)
    repeat(number - 1)
less power | pull:                        key(y)
(less power | pull) <number>:
    key(ctrl)
    repeat(number - 1)
cut [power]:                              key(x)

# Docking Controls
######################################

# EVA Controls
######################################

# VAB/SPH Controls
######################################

# part rotation
# XXX: just use the movement directions which are the same
rotate [part] down:                       key(w)
rotate [part] up:                         key(s)
rotate [part] (west | left flat):         key(a)
rotate [part] (east | rights flat):       key(d)
rotate [part] left:                       key(q)
rotate [part] right:                      key(e)
reset [part] rotation:                    key(space)

# modes
place mode:                               key(1)
toggle (vessel | parent [part]) symmetry: key(f)
offset mode:                              key(2)
toggle (absolute | load centered) offset: key(f)
rotate mode:                              key(3)
toggle (absolute | relative) rotation:    key(f)
root mode:                                key(4)

# symmetry
toggle (mirror | radial) symmetry:        key(r)
more symmetry:                            key(x)
less symmetry:                            key(shift-x)
toggle [angle] snap:                      key(c)

# misc
reset staging list:                       key(enter)
move ship:
    key("shift:down")
    mouse_click(0)
    key("shift:up")
page up:                                  key(pageup)
page down:                                key(pagedown)

# parts
search part:                              key(`)
(show | display) [that] [in] part list:
    key("ctrl:down")
    mouse_click(0)
    key("ctrl:up")
duplicate (part | that):
    key("rshift:down")
    mouse_click(0)
    key("rshift:up")






# {user.letter}:              key(letter)
pause:                      key(escape)
void:                       key(space)

# Modifier(s) + key: "control air" or "control win left"
<user.key_modifiers> <user.key_unmodified>:
    key("{key_modifiers}-{key_unmodified}")

# Single key. Including Modifiers, [a-z], [0-9], [F1-F12], arrow, symbols
press <user.key_any>:       key(key_any)
    
help (ksp | kay es pee) | talon help:                   user.help_selected_context("user.knausj_talon.games.ksp.ksp.talon")
help close$:                user.help_hide()  
