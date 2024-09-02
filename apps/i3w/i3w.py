from talon import Context, Module, actions, settings
from talon import app, ui
import time

ctx = Context()
ctx.matches = """
tag: user.i3wm
"""

@ctx.action_class("user")
class Actions:
    def switcher_focus_app(app: ui.App):
        """Focus application no matter on which workspace"""
        # XXX: There is probably as smarter way by checking whether the window is activated or not
        # attempting to focus a window results in the window being marked urgent and focused (I think?), but the workspace will not be switched unless this is configured explicitly. Therefore, we have to make sure ourselves.
        app.focus()
        attempted_switch_to_urgent_window = False
        t1 = time.perf_counter()
        while ui.active_app() != app:
            if time.perf_counter() - t1 > 0.1:
                if not attempted_switch_to_urgent_window:
                    actions.key("super-u")
                    attempted_switch_to_urgent_window = True
            elif time.perf_counter() - t1 > 1:
                raise RuntimeError(f"Can't focus app: {app.name}")
            actions.sleep(0.1)

    def switcher_menu():
        """Open a menu of running apps to switch to"""
        actions.key("super-g")
