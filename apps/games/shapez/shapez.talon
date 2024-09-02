mode: user.game
app: shapez
-
settings():
    key_wait = 6
# System/UI Controls
######################################

# navigation
# TODO: create a capture for navigation directions
# TODO: too slow!

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

# Placement
######################################

clone:           key(q)
type:            key(t)
# XXX: just use the movement directions which are the same
(rotate | point) [part] {user.arrow_key}:           key(arrow_key)

(mass | bulk) place | palace:
    key(shift:down)
    #bbuser.mouse_drag(0)

# Parts
######################################
belt:               key(1)
merge:              key(2)
tunnel:             key(3)
extractor | tractor:key(4)
cutter:             key(5)
rotater:            key(6)
stacker:            key(7)
color mixer:        key(8)
painter:            key(9)
trash:              key(0)

# Mass Select
######################################
(mass | bulk) select | square:
    # XXX needs work
    key(ctrl:down)
    sleep(1s)
    user.mouse_drag(0)

# Miscellaneous stuff
######################################

pause:                      key(escape)

# mouse
pew:                 user.mouse_drag(0)

# Hold down modifiers
shifty | shaft:             key(shift:up shift:down)
catty:                      key(ctrl:up ctrl:down)
alty:                       key(alt:up alt:down)
# todo
hold <user.key_modifiers>:  key("{key_modifiers}:down")

# release any held down modifiers
release | stop:
    user.mouse_drag_end()
    key(ctrl:up)
    key(shift:up)
    key(alt:up)
escape:
    key(escape)
    user.mouse_drag_end()
    key(ctrl:up)
    key(shift:up)
    key(alt:up)

# Modifier(s) + key: "control air" or "control win left"
<user.key_modifiers> <user.key_unmodified>:
    key("{key_modifiers}-{key_unmodified}")

# {user.letter}:              key(letter)
# Single key. Including Modifiers, [a-z], [0-9], [F1-F12], arrow, symbols
press <user.key_any>:       key(key_any)
    
help (shapes) | talon help:                   user.help_selected_context("user.knausj_talon.games.shapez.shapez.talon")
help up$:                user.help_hide()  
