# My Awesome Linux VM Setup

[Back to the workstation overview](../README.md)

This setup is intentionally smaller than the macOS one. Linux is used mainly for
cross-platform validation inside a virtual machine, so only the tools needed for
that workflow are documented here.

## Updates

Once the tools below are installed, keep them up to date with:

```sh
sudo apt update && sudo apt upgrade
```

## Installers

```sh
sudo apt install -y firefox git starship atuin zsh
curl -f https://zed.dev/install.sh | sh
curl https://cursor.com/install -fsS | bash
```

## Shell

On a fresh Linux installation, set Zsh as your default shell and enable Starship
and Atuin as follows.

1. Set Zsh as the default shell:

```sh
chsh -s $(which zsh)
```

Log out and back in (or restart the VM) so the new shell takes effect.

2. Create `~/.zshrc`:

```sh
touch ~/.zshrc
```

3. Open it in an editor:

```sh
nano ~/.zshrc
```

4. Add the following lines and save:

```zsh
export PATH="$HOME/.local/bin:$PATH"

eval "$(atuin init zsh --disable-ai)"
eval "$(starship init zsh)"
```

5. Reload the file:

```zsh
source ~/.zshrc
```

## Tools

| What | Tool | Why |
| --- | --- | --- |
| Web browser | [Firefox](https://www.mozilla.org/firefox/)<br>(Open Source) | Everyday browsing |
| Code editor | [Zed](https://zed.dev/)<br>(Open Source) | Work in a fast, native editor for everyday development and validation workflows |
| Distributed version control system | [Git](https://git-scm.com/)<br>(Open Source) | Access the software I need to validate |
| Shell | [Zsh](https://www.zsh.org/)<br>(Open Source) | Interactive shell for Starship, Atuin, and everyday terminal work |
| Contextual information and prompt theme | [Starship](https://starship.rs/)<br>(Open Source) | See the current directory, Git status, and active development environment at a glance with a simple and functional theme |
| Shell history manager with an optional AI assistant | [Atuin](https://atuin.sh/)<br>(Open Source) | Manage contextual command history with the option to use private AI models |
| Multi-model coding agent harness | [Cursor Agent CLI](https://cursor.com/en-US/blog/cli) | Help with debugging, running commands, and general support |
