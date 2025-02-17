# A project for learning both Zig and game development

## vscode configuration:
Open the Command Palette (Ctrl + Shift + P).
Search for and select:
"Tasks: Open User Tasks" for tasks.json.
"Debug: Open launch.json" for launch.json.
### launch.json:
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Debug Zig with GDB",
            "type": "cppvsdbg",
            "request": "launch",
            "program": "${workspaceFolder}/zig-out/bin/hello",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}",
            "environment": [],
            "externalConsole": false,
            "preLaunchTask": "build",
        }
    ]
}

### tasks.json:
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks": [
        {
            "label": "build",
            "type": "shell",
            "command": "zig build",
            "problemMatcher": [],
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}

### Debugger
VSCode debugger:
Use MSYS MINGW64 to install gdb using the following command:
pacman -S mingw-w64-x86_64-gdb
