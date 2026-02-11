# Keybinds Cheatsheet

## Tmux
**Prefix:** `Ctrl+a`

### Window Management
- `prefix + c` - Create new window
- `prefix + ,` - Rename current window
- `prefix + n` - Next window
- `prefix + p` - Previous window
- `prefix + [0-9]` - Switch to window number
- `prefix + &` - Kill window

### Pane Management
- `prefix + %` - Split vertically
- `prefix + "` - Split horizontally
- `prefix + o` - Switch pane
- `prefix + arrow` - Navigate panes
- `prefix + x` - Kill pane
- `prefix + z` - Toggle pane zoom

### Sessions
- `prefix + d` - Detach from session
- `prefix + $` - Rename session
- `prefix + s` - List sessions

### Plugins
- `prefix + I` - Install plugins (TPM)
- `prefix + U` - Update plugins
- `prefix + alt+u` - Uninstall plugins

### Other
- `prefix + ?` - List all keybinds
- `prefix + [` - Enter copy mode
- `prefix + ]` - Paste

---

## Neovim (LazyVim)
**Leader:** `Space`

### General
- `:` - Command mode
- `Esc` or `Ctrl+c` - Normal mode
- `:q` - Quit
- `:w` - Save
- `:wq` - Save and quit
- `:q!` - Quit without saving

### File Navigation
- `<leader>ff` - Find files (Telescope)
- `<leader>fg` - Live grep
- `<leader>fb` - Browse buffers
- `<leader>fr` - Recent files
- `<leader>e` - Toggle file explorer

### Code Actions
- `<leader>ca` - Code actions
- `<leader>cr` - Rename symbol
- `<leader>cf` - Format file
- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `[d` - Previous diagnostic
- `]d` - Next diagnostic

### Search & Replace
- `<leader>sr` - Search and replace (grug-far)
- `/` - Search forward
- `?` - Search backward
- `n` - Next match
- `N` - Previous match

### Window Management
- `<C-h>` - Move to left window
- `<C-j>` - Move to bottom window
- `<C-k>` - Move to top window
- `<C-l>` - Move to right window
- `<leader>w` - Window commands

### Buffers & Tabs
- `<leader>bd` - Delete buffer
- `<S-h>` - Previous buffer
- `<S-l>` - Next buffer
- `<leader><tab>` - Tab commands

### Git
- `<leader>gg` - LazyGit
- `<leader>gb` - Git blame line
- `]h` - Next hunk
- `[h` - Previous hunk

### Plugins
- `<leader>l` - Lazy (plugin manager)
- `<leader>m` - Mason (LSP installer)

### Notifications
- `<leader>sn` - Show all messages (Noice)
- `:Noice` - Message history
- `:messages` - Native message log

---

## Zsh (Shell)

### History
- `Ctrl+R` - Reverse history search (fzf)
- `Up/Down` - Navigate history
- `!!` - Last command
- `!$` - Last argument of previous command
- `Alt+.` - Insert last argument

### Navigation
- `Ctrl+A` - Beginning of line
- `Ctrl+E` - End of line
- `Ctrl+U` - Clear line before cursor
- `Ctrl+K` - Clear line after cursor
- `Ctrl+W` - Delete word before cursor
- `Ctrl+L` - Clear screen

### Autosuggestions
- `→` (Right arrow) - Accept suggestion
- `Ctrl+F` - Accept suggestion (alternative)

### Tab Completion
- `Tab` - Complete command/path
- `Tab Tab` - Show all completions

---

## Ghostty (Terminal)

### Tabs
- `Cmd+T` - New tab
- `Cmd+W` - Close tab
- `Cmd+[1-9]` - Switch to tab number
- `Cmd+Shift+[` - Previous tab
- `Cmd+Shift+]` - Next tab

### Panes/Splits
- `Cmd+D` - Split vertically
- `Cmd+Shift+D` - Split horizontally
- `Cmd+[` - Previous split
- `Cmd+]` - Next split

### Fonts & Zoom
- `Cmd++` - Increase font size
- `Cmd+-` - Decrease font size
- `Cmd+0` - Reset font size

### Other
- `Cmd+K` - Clear screen
- `Cmd+F` - Search
- `Cmd+,` - Open settings

---

## Git (CLI)

### Common Commands
- `git status` - Check status
- `git add .` - Stage all changes
- `git commit -m "message"` - Commit
- `git push` - Push to remote
- `git pull` - Pull from remote
- `git log` - View commit history
- `git diff` - View changes

### Branches
- `git branch` - List branches
- `git checkout -b <name>` - Create new branch
- `git checkout <name>` - Switch branch
- `git merge <branch>` - Merge branch

---

## Notes
- LazyVim keybinds can be customized in `~/dotfiles/nvim/lua/config/keymaps.lua`
- Tmux keybinds can be customized in `~/dotfiles/tmux/tmux.conf`
- Zsh keybinds can be customized in `~/dotfiles/zsh/.zshrc`
- Ghostty keybinds can be customized in `~/dotfiles/ghostty/config`
