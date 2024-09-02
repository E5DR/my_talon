from talon import Module, Context, actions

mod = Module()

mod.mode("game", "Used to play games")

ctx = Context()
ctx.matches = r"""
mode: user.game
"""

ctx.settings = {
    "speech.timeout": 0.15,
}


@ctx.action_class("speech")
class SpeechActions:
    def disable():
        actions.mode.save()
        actions.mode.disable("user.game")
        actions.mode.enable("sleep")


@mod.action_class
class Actions:
    def game_mode_enable():
        """Enable game mode"""
        actions.mode.disable("command")
        actions.mode.enable("user.game")

    def game_mode_disable():
        """Disable game mode"""
        actions.mode.disable("user.game")
        actions.mode.enable("command")
        actions.user.mouse_release_held_buttons()