# My Awesome Windows VM Setup

[Back to the workstation overview](../README.md)

This setup is intentionally smaller than the macOS one. Windows is used mainly
for cross-platform validation inside a virtual machine, so only the tools needed
for that workflow are documented here.

## Updates

Once the tools below are installed, keep them up to date with:

```powershell
winget upgrade --all
```

## Installers

```powershell
winget install -e --id Mozilla.Firefox
winget install -e --id Git.Git
winget install -e --id ZedIndustries.Zed
winget install -e --id Starship.Starship
winget install -e --id Atuinsh.Atuin
irm https://cursor.com/install -ExecutionPolicy Bypass | iex
```

## Shell

On a fresh Windows installation, create your PowerShell profile and enable
Starship and Atuin as follows.

1. Create the PowerShell profile:

```powershell
New-Item -Path $PROFILE -ItemType File -Force
```

2. Allow local scripts to run (needed once on a new install):

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

Confirm with `Y`.

3. Open the profile:

```powershell
notepad $PROFILE
```

4. Add the following lines and save:

```powershell
atuin init powershell --disable-ai | Out-String | Invoke-Expression
Invoke-Expression (&starship init powershell)
```

5. Reload the profile:

```powershell
. $PROFILE
```

## Tools

| What | Tool | Why |
| --- | --- | --- |
| Web browser | [Firefox](https://www.mozilla.org/firefox/)<br>(Open Source) | Everyday browsing |
| Code editor | [Zed](https://zed.dev/)<br>(Open Source) | Work in a fast, native editor for everyday development and validation workflows |
| Distributed version control system | [Git](https://git-scm.com/)<br>(Open Source) | Access the software I need to validate |
| Contextual information and prompt theme | [Starship](https://starship.rs/)<br>(Open Source) | See the current directory, Git status, and active development environment at a glance with a simple and functional theme |
| Shell history manager with an optional AI assistant | [Atuin](https://atuin.sh/)<br>(Open Source) | Manage contextual command history with the option to use private AI models |
| Multi-model coding agent harness | [Cursor Agent CLI](https://cursor.com/en-US/blog/cli) | Help with debugging, running commands, and general support |
