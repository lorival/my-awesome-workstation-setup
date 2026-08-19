# My Awesome macOS Workstation Setup

[Back to the workstation overview](../README.md)

## Essentials

```sh
brew bundle --file=macos/brewfiles/essentials.Brewfile
```

| What | Tool | Why | Previously used | Notes |
| --- | --- | --- | --- | --- |
| Everyday web browser | [Brave](https://brave.com/)<br>(Open Source) | Keep Chromium compatibility while reducing tracking with privacy protections built into the browser | • [Google Chrome](https://www.google.com/chrome/)<br>• [Microsoft Edge](https://www.microsoft.com/edge)<br>• [Internet Explorer](https://www.microsoft.com/edge/internet-explorer)<br>• [Opera](https://www.opera.com/)<br>• [Safari](https://www.apple.com/safari/) | I use it for everyday browsing and prefer it for its privacy protections |
| Password manager | • [KeePassXC](https://keepassxc.org/)<br>(Open Source)<br>• [Enpass](https://www.enpass.io/)<br>(Free for Desktop) | Manage my passwords | • [KeePass](https://keepass.info/)<br>• [LastPass](https://www.lastpass.com/) | I only use password managers that let me control where the vault is stored.<br>I store OTPs separately from my passwords. |
| Desktop authenticator | [Ente Auth](https://ente.com/auth/)<br>(Open Source) | Access OTP codes locally without relying on cloud synchronization | — | I use it offline and use Google Authenticator as an independent mobile copy |
| Cloud storage and file synchronization service | [Google Drive](https://workspace.google.com/products/drive/) + [Cryptomator](https://cryptomator.org/)<br>(Open Source) | Securely store and synchronize files | • [Dropbox](https://www.dropbox.com/)<br>• [iCloud Drive](https://www.icloud.com/iclouddrive/)<br>• [Microsoft OneDrive](https://www.microsoft.com/microsoft-365/onedrive/online-cloud-storage) | This combination is more affordable than Proton Drive and supports encrypted cross-platform synchronization.<br>I also keep offline copies on disk |
| Team communication platforms | • [Element](https://element.io/)<br>(Open Source)<br>• [Microsoft Teams](https://www.microsoft.com/microsoft-teams/) | Communicate and collaborate with teams through messaging, calls, screen sharing, and integrations across desktop and mobile | • [Keybase](https://keybase.io/)<br>• [Mattermost](https://mattermost.com/)<br>• [Slack](https://slack.com/)<br>• [Zoom](https://www.zoom.com/) | I use Element for federated, end-to-end encrypted communication without vendor lock-in.<br>I use Microsoft Teams when collaborating with organizations that use the Microsoft ecosystem |

## Development

```sh
brew bundle --file=macos/brewfiles/development.Brewfile
```

> Bowire is not yet available through Homebrew.

| What | Tool | Why | Previously used | Notes |
| --- | --- | --- | --- | --- |
| High-performance code editor | [Zed](https://zed.dev/)<br>(Open Source) | Work in a fast, native editor that brings code editing, Git, terminal, debugging, collaboration, and AI agents into one focused interface | • [Android Studio](https://developer.android.com/studio)<br>• [Cursor](https://www.cursor.com/)<br>• [Eclipse IDE](https://www.eclipse.org/ide/)<br>• [IntelliJ IDEA](https://www.jetbrains.com/idea/)<br>• [NetBeans](https://netbeans.apache.org/)<br>• [Sublime Text](https://www.sublimetext.com/)<br>• [Visual Studio](https://visualstudio.microsoft.com/)<br>• [VSCode](https://code.visualstudio.com/) | I am starting to adopt Zed and will expand this section as it becomes part of my everyday development workflow |
| Web browser for development | [Firefox Developer Edition](https://www.firefox.com/channel/desktop/developer/)<br>(Open Source) | Profile web performance, inspect network traffic, and test responsive designs outside Chromium | Firefox | For development, I primarily use Firefox.<br>Brave and Safari serve only as final cross-browser compatibility checks |
| Distributed version control system | [Git](https://git-scm.com/)<br>(Open Source) | Track changes locally through commits, branches, tags, merges, and reproducible project history | • [Mercurial](https://www.mercurial-scm.org/)<br>• [Apache Subversion (SVN)](https://subversion.apache.org/)<br>• [Team Foundation Version Control](https://learn.microsoft.com/en-us/azure/devops/repos/tfvc/what-is-tfvc) | Git remains the local source of truth and works independently of any repository hosting service |
| Repository hosting and CI/CD platforms | • [GitHub](https://github.com/) + [Desktop](https://desktop.github.com/) + [CLI](https://cli.github.com/)<br>• [GitLab](https://gitlab.com/) + [CLI](https://docs.gitlab.com/cli/) | Host repositories, collaborate through reviews and issues, automate builds, tests, releases, and deployments, and manage platform workflows from graphical and terminal interfaces | • [Bitbucket](https://bitbucket.org/)<br>• [Jenkins](https://www.jenkins.io/)<br>• [Team Foundation Server](https://azure.microsoft.com/products/devops/server/) | I use GitHub Actions and GitLab CI/CD for delivery automation, GitHub Desktop for visual workflows, and `gh` and `glab` for terminal workflows |
| Multi-protocol API workbench | [Bowire](https://bowire.io/)<br>(Open Source) | Discover, invoke, test, record, replay, and mock synchronous and asynchronous APIs through one local workbench, including REST, GraphQL, gRPC, Kafka, MQTT, AMQP, NATS, Pulsar, WebSocket, and SSE | • [Insomnia](https://insomnia.rest/)<br>• [Postman](https://www.postman.com/)<br>• [SoapUI](https://www.soapui.org/) | I use Bowire as a unified client for request-response and event-driven workflows; with Kafka, I only need to produce, consume, and inspect messages rather than administer the cluster |
| Database IDE | [DBeaver Community](https://dbeaver.io/)<br>(Open Source) | Work with multiple databases using a comprehensive SQL editor, data and schema tools, ER diagrams, import, export, and administration features | • [DataGrip](https://www.jetbrains.com/datagrip/)<br>• [pgAdmin 3](https://www.pgadmin.org/docs/pgadmin3/latest/)<br>• [SQuirreL SQL](https://squirrel-sql.sourceforge.io/)<br>• [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/ssms/)<br>• [Toad](https://www.quest.com/toad/) | I use the Community edition because it provides the broadest mature open-source database toolset without requiring a commercial license |
| Kubernetes IDE | [FreeLens](https://freelensapp.github.io/)<br>(Open Source) | Explore and operate multiple Kubernetes clusters through a local graphical interface with resource editing, logs, terminals, metrics, Helm, and bundled command-line tools | — | I use FreeLens as the visual Kubernetes environment and keep terminal-oriented tools as a complementary workflow |

## Terminal

```zsh
brew bundle --file=macos/brewfiles/terminal.Brewfile
```

Adapt your machine's `~/.zshrc` using [`terminal.zshrc`](terminal.zshrc) as an
example. On a fresh macOS installation, you can copy it directly:

```zsh
cp macos/terminal.zshrc ~/.zshrc
source ~/.zshrc
```

| What | Tool | Why | Previously used | Notes |
| --- | --- | --- | --- | --- |
| Terminal emulator | [Ghostty](https://ghostty.org/)<br>(Open Source) | Keep terminal sessions fast, native, and local | • [iTerm2](https://iterm2.com/)<br>• [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/)<br>• [Warp](https://www.warp.dev/) | I use Zsh, the default shell on macOS, and extend it with plugins |
| Contextual information and prompt theme | [Starship](https://starship.rs/)<br>(Open Source) | See the current directory, Git status, and active development environment at a glance with a simple and functional theme | • [Oh My Zsh](https://ohmyz.sh/)<br>• [Warp](https://www.warp.dev/) | I have used Oh My Zsh, but now I prefer a lighter Zsh setup with Starship for the prompt |
| Shell history manager with an optional AI assistant | [Atuin](https://atuin.sh/)<br>(Open Source) | Manage contextual command history with the option to use private AI models | • [Oh My Zsh](https://ohmyz.sh/)<br>• [Warp](https://www.warp.dev/) | When I enable AI, I can self-host the backend and connect it to my chosen API or a local LLM instead of routing prompts through a third-party intermediary |
| Inline command suggestions | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)<br>(Open Source) | Reuse commands faster with unobtrusive history-based suggestions | • [Oh My Zsh](https://ohmyz.sh/)<br>• [Warp](https://www.warp.dev/) | I have also used this plugin with Oh My Zsh |
| Syntax highlighting for commands | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)<br>(Open Source) | Catch invalid commands and syntax errors before execution | • [Oh My Zsh](https://ohmyz.sh/)<br>• [Warp](https://www.warp.dev/) | I have also used this plugin with Oh My Zsh |
| Development environment manager | [mise](https://mise.jdx.dev/)<br>(Open Source) | Manage development tool versions, environment variables, and project tasks in one place | • [direnv](https://direnv.net/)<br>• [Makefile](https://www.gnu.org/software/make/)<br>• [SDKMAN!](https://sdkman.io/)<br>• [Taskfile](https://taskfile.dev/) | I used Makefiles for years and later moved to Taskfile for cross-platform support, but mise better streamlines the overall development environment |

## Agent Harnesses & Sandboxing

```sh
brew trust docker/tap
brew bundle --file=macos/brewfiles/agent-harnesses-and-sandboxing.Brewfile
```

| What | Tool | Why | Previously used | Notes |
| --- | --- | --- | --- | --- |
| Multi-model coding agent harness | [Cursor Agent CLI](https://cursor.com/en-US/blog/cli) | Run Cursor agents from the terminal to inspect codebases, edit files, execute commands, and automate development tasks without depending on the Cursor editor | — | I use Cursor only through its CLI as an agent harness, while Zed remains my code editor |
| General-purpose coding agent harness | [OpenAI Codex](https://developers.openai.com/codex/) | Delegate repository-level work such as understanding codebases, implementing features, fixing bugs, running tests, reviewing changes, and preparing code to ship | — | I can use Codex through its desktop experience, CLI, IDE integration, or cloud workflows, depending on how much autonomy and isolation the task requires |
| Terminal-native coding agent harness | [Claude Code](https://docs.anthropic.com/en/docs/claude-code/overview) | Work with an agent directly from the terminal to explore codebases, edit files, execute development commands, and handle multi-step engineering tasks | — | Claude Code provides a second agentic workflow and model ecosystem while remaining compatible with terminal and IDE-based development |
| Isolated execution environment for coding agents | [Docker Sandboxes (`sbx`)](https://docs.docker.com/ai/sandboxes/) | Run coding agents inside isolated microVMs with a private Docker daemon and controlled filesystem, network, credential, and tool access | [Docker Desktop](https://www.docker.com/products/docker-desktop/) | I use clone mode when possible so agent harnesses work on a private copy instead of writing directly to the original workspace; Docker Desktop is not required |

## Connectivity

```sh
brew bundle --file=macos/brewfiles/connectivity.Brewfile
```

| What | Tool | Why | Previously used | Notes |
| --- | --- | --- | --- | --- |
| Online threat protection and VPN | [NordVPN](https://nordvpn.com/) | Block scams and phishing and monitor exposed credentials without an active VPN, with the option to browse from another location when needed | — | I keep threat protection active to complement Brave and extend ad blocking to Firefox.<br>I leave malware scanning disabled because I do not grant full disk access.<br>I enable the VPN only when I need a different location |
| Cross-platform software KVM | [Synergy](https://symless.com/synergy) | Control nearby macOS, Linux, and Windows computers with one keyboard and mouse while sharing the clipboard over the local network | — | I use it to move between multiple computers as if they were one workstation |
