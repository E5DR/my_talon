app: vscode
-
imports fix:
    user.vscode_add_missing_imports()
    sleep(100ms)
    user.run_rpc_command("editor.action.organizeImports")
