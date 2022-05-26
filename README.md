# setup-scripts

Install all on windows:

```PowerShell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/lukaspanni/setup-scripts/main/setup-windows.ps1'))
```


Install all on macOS

```bash
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/lukaspanni/setup-scripts/main/install.sh)"
```