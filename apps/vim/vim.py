from talon import Context, Module, actions, settings, ui, clip

ctx_vim = Context()
ctx_vim.matches = r"""
tag: user.vim
"""
key_request_vim_peek_left  = 'ctrl-f11'
key_request_vim_peek_right = 'ctrl-f12'

# Note: If vim is not in insert mode or does not support these keybindings,
# this will currently not only fail but erroneously use the current clipboard
# content to peek

@ctx_vim.action_class("user")
class Actions:
    def dictation_peek(left: bool, right: bool):
        if not (left or right):
            return None, None
        before, after = None, None
        if left:
            with clip.revert():
                actions.key(key_request_vim_peek_left)
                actions.sleep("50ms")
                before = clip.text()
        if right:
            with clip.revert():
                actions.key(key_request_vim_peek_right)
                actions.sleep("50ms")
                after = clip.text()
        return before, after

#    def dictation_peek_left():
#        with clip.revert():
#            with clip.capture() as s:
#                actions.key(vim_key_request_context_right)
#                actions.sleep("150ms")
#            try:
#                return s.text()
#            except clip.NoChange:
#                return ""

