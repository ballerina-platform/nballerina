# 1.Using pretty printer with GDB
Use the command `source <path_to_prittyprinter.py>` at the beginning of the GDB session or add it to your gdb config (ex `~/.gdbinit`)

# 2.Using pretty printer with VS code debug
After step 2 you may use any debug extension that intergrate with GDB to debug your ballerina executable (compiled with `debugLevel 2`). For example you may use [`Microsoft C++`](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools) with the fallowing [launch config](https://code.visualstudio.com/docs/editor/debugging#_launch-configurations) file:

```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "debug",
            "type": "cppdbg",
            "request": "launch",
            "program": "${workspaceFolder}/${fileBasenameNoExtension}.exe", // path to exe file
            "cwd": "${workspaceFolder}",
            "stopAtEntry": false,
            "setupCommands": [
                {
                    "text": "-enable-pretty-printing",
                    "description": "enable pretty printing",
                    "ignoreFailures": false
                }
            ],
            "linux": {
                "MIMode": "gdb",
                "miDebuggerPath": "/usr/bin/gdb"
            }
        }
    ]
}

```