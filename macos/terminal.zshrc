export PATH="$HOME/.local/bin:$PATH"

eval "$(mise activate zsh)"
eval "$(atuin init zsh --disable-ai)"

source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

eval "$(starship init zsh)"

# Must remain last
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
