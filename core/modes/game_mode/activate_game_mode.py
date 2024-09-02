from talon import Module, ui, actions, scope, app

mod = Module()

game_list = [
    "KSP.x86_64",
    "shapezio",
]

def is_game(application) -> bool:
    """check if the application is a game from the list"""
    for game in game_list:
        if application.exe.endswith(game):
            return True
    return False

def on_app_switch(application):
    # print(f"App [{application.name}] triggered.")
    modes = scope.get("mode")
    if modes is None:
        return
    # if "sleep" in modes:
    #     return
        
    # automatically activate game mode for games
    if is_game(application):
        if "user.game" not in modes:
            actions.mode.disable("command")
            actions.mode.enable("user.game")
            app.notify(f"App [{application.name}] triggered game mode.")

    # automatically deactivate game mode for other applications
    else:
        if "user.game" in modes:
            actions.mode.enable("command")
            actions.mode.disable("user.game")
            actions.mode.disable("sleep")
            actions.mode.disable("dictation")
            app.notify(f"App [{application.name}] triggered command mode.")

ui.register("app_activate", on_app_switch)
