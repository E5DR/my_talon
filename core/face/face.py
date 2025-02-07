from talon import app, actions

def disable_face_at_launch():
    actions.mode.disable("face")

app.register("launch", disable_face_at_launch)