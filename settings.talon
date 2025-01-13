# my custom settings
# I try keeping most of my settings in here instead of in my community fork

settings():
    speech.timeout = 0.500

    # Uncomment to enable context-sensitive dictation. This determines how to format
    # (capitalize, space) dictation-mode speech by selecting & copying surrounding text
    # before inserting. This can be slow and may not work in some applications. You may
    # wish to enable this on a per-application basis.
    user.context_sensitive_dictation = true

    # Choose how to resize windows moved across physical screens (eg. via `snap next`).
    # Default is 'proportional', which preserves window size : screen size ratio.
    # 'size aware' keeps absolute window size the same, except full-height or
    # -width windows are resized to stay full-height/width.
    # user.window_snap_screen = "size aware"

    # Puts Talon into sleep mode if no commands are spoken for a defined period of time.
    user.listening_timeout_minutes = 30

# Uncomment to enable the curse yes/curse no commands (show/hide mouse cursor).
# See issue #688 for more detail: https://github.com/talonhub/community/issues/688
tag(): user.mouse_cursor_commands_enable

# Uncomment the below to disable support for saying numbers without a prefix.
# By default saying "one" would write "1", however many users find this behavior
# prone to false positives. If you uncomment this, you will need to say
# "numb one" to write "1". Note that this tag will eventually be activated by default
tag(): user.prefixed_numbers

# TODO: enable device specific
tag(): user.i3wm
