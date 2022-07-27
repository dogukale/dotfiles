# ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

# Prompt
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = "者 "
Invoke-Expression (&starship init powershell)

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Alias
Set-Alias pstorm phpstorm64.exe

# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function goto {
    param (
        $location
    )

    Switch ($location) {
        "www" {
            Set-Location -Path "C:\laragon\www"
        }
    }
}
