# Bakos Dotfiles

## Setup

**Quick install:**
```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
./install.sh
```

## What's Included

- **Shell**: Zsh with Starship prompt
- **Terminal**: Ghostty
- **Editor**: Neovim (LazyVim)
- **Multiplexer**: Tmux with Catppuccin theme
- **Tools**: fzf, ripgrep, eza

## Structure
```
~/dotfiles/
├── ghostty/       # Ghostty terminal config
├── starship/      # Starship prompt config
├── nvim/          # Neovim/LazyVim config
├── tmux/          # Tmux config & plugins
├── git/           # Git config
├── zsh/           # Zsh configs (.zshrc, .zprofile)
└── install.sh     # Automated installation script
```

## Post-Install

1. Restart terminal or `source ~/.zshrc`
2. Open tmux: `Ctrl+a` then `Shift+I` to install plugins
3. Open nvim: plugins auto-install on first launch

## Requirements

- macOS
- Homebrew
- Git

## Dependencies (install via Homebrew)
```bash
brew install starship tmux neovim fzf ripgrep eza zsh-autosuggestions zsh-syntax-highlighting
brew install --cask ghostty
```
