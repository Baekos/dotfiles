#!/bin/bash

set -e  # Exit on error

echo "Installing dotfiles..."

# Backup existing configs
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

backup_if_exists() {
    if [ -e "$1" ] && [ ! -L "$1" ]; then
        echo "Backing up $1"
        mv "$1" "$BACKUP_DIR/"
    fi
}

# Backup existing configs
backup_if_exists "$HOME/.zshrc"
backup_if_exists "$HOME/.zprofile"
backup_if_exists "$HOME/.gitconfig"
backup_if_exists "$HOME/.config/ghostty"
backup_if_exists "$HOME/.config/starship"
backup_if_exists "$HOME/.config/nvim"
backup_if_exists "$HOME/.config/tmux"

# Create necessary directories
mkdir -p "$HOME/.config"

# Remove old symlinks if they exist
rm -f "$HOME/.zshrc"
rm -f "$HOME/.zprofile"
rm -f "$HOME/.gitconfig"
rm -rf "$HOME/.config/ghostty"
rm -rf "$HOME/.config/starship"
rm -rf "$HOME/.config/nvim"
rm -rf "$HOME/.config/tmux"

# Create symlinks
echo "Creating symlinks..."
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/dotfiles/zsh/.zprofile" "$HOME/.zprofile"
ln -sf "$HOME/dotfiles/git/.gitconfig" "$HOME/.gitconfig"
ln -sf "$HOME/dotfiles/ghostty" "$HOME/.config/ghostty"
ln -sf "$HOME/dotfiles/starship/starship.toml" "$HOME/.config/starship.toml"
ln -sf "$HOME/dotfiles/nvim" "$HOME/.config/nvim"
ln -sf "$HOME/dotfiles/tmux" "$HOME/.config/tmux"
ln -sf "$HOME/dotfiles/bat" "$HOME/.config/bat"

# Install TPM if not present
if [ ! -d "$HOME/.config/tmux/plugins/tpm" ]; then
    echo "Installing TPM (Tmux Plugin Manager)..."
    git clone https://github.com/tmux-plugins/tpm "$HOME/.config/tmux/plugins/tpm"
fi

echo "Dotfiles installed!"
echo "Next steps:"
echo "  1. Restart your terminal or run: source ~/.zshrc"
echo "  2. Open tmux and press prefix + I to install plugins"
echo "  3. Open nvim - LazyVim will auto-install plugins on first launch"
echo "Backup saved to: $BACKUP_DIR"
