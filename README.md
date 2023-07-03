# dotfiles
There's no place like ~/

## Installation
1. Open Windows Terminal as Administrator
2. Run Set-ExecutionPolicy and change the Execution Policy setting
    ```sh
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
    ```
This command sets the execution policy to bypass for only the current PowerShell session after the window is closed.
The next PowerShell session will open running with the default execution policy. “Bypass” means nothing is blocked and no warnings, prompts, or messages will be displayed.
