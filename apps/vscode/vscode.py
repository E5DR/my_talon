from talon import Module

mod = Module()

# on my system vscode sometimes shows up as just "Electron"
mod.apps.vscode = """
os: linux
and app.name: Electron
and win.title: /Code - OSS/
"""

# focus "commmunity" vscode window
# candidates = [w for w in ui.apps(name="Code")[0].windows() if "community" in w.title]
# candidates[0].focus()
