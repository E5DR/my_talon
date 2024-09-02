app: ksp
-
# Usually, gaming mode is activated automatically on focus.
# However, if you explicitly returned to command mode to
# do some stuff this allows you to get back without having
# to switch focus.

^(game | gaming) mode$:   user.game_mode_enable()