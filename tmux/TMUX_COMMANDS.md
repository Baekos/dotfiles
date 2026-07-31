# tmux cheatsheet

Generated from `~/.config/tmux/tmux.conf`. Custom bindings (things that differ from stock tmux) are marked **⭐ custom**.

> **Prefix:** `Ctrl-a` (remapped from the default `Ctrl-b`).
> Press the prefix, release, then press the command key. Below, `pfx` = `Ctrl-a`.

---

## ⭐ Your custom bindings

| Keys | Action |
|------|--------|
| `Ctrl-a` | Prefix — press before any command below |
| `Ctrl-a` `Ctrl-a` | Send a literal `Ctrl-a` through to the shell |
| `pfx` + `r` | Reload the config, no restart needed |
| `pfx` + `f` | Launch `tmux-sessionizer` (fuzzy jump to a project session) |
| `pfx` + `^` | Jump to last window · *repeatable* |

*Repeatable keys can be pressed again without re-hitting the prefix (brief window).*

## ⭐ Pane navigation — vim style

| Keys | Action |
|------|--------|
| `pfx` + `h` | Move to pane on the **left** · *repeatable* |
| `pfx` + `j` | Move to pane **below** · *repeatable* |
| `pfx` + `k` | Move to pane **above** · *repeatable* |
| `pfx` + `l` | Move to pane on the **right** · *repeatable* |

## ⭐ Mouse (enabled)

| Action | Result |
|--------|--------|
| Click | Select a pane or window |
| Drag border | Resize panes |
| Scroll | Enter copy mode and scroll back through history |

---

## Copy mode (vi keys)

| Keys | Action |
|------|--------|
| `pfx` + `[` | Enter copy mode (also triggered by scrolling) |
| `v` | Begin selection — **⭐ custom** |
| `y` | Yank selection to system clipboard via `xclip` — **⭐ custom** |
| `/` · `?` | Search forward / backward |
| `n` · `N` | Next / previous search match |
| `g` · `G` | Jump to top / bottom |
| `q` or `Esc` | Quit copy mode |
| `pfx` + `]` | Paste the last tmux buffer |

## Windows

Windows are numbered from **1** (`base-index 1`).

| Keys | Action |
|------|--------|
| `pfx` + `c` | Create new window |
| `pfx` + `1`…`9` | Jump to window by number |
| `pfx` + `n` · `p` | Next / previous window |
| `pfx` + `w` | Interactive window list |
| `pfx` + `,` | Rename current window |
| `pfx` + `&` | Kill window (asks first) |

## Panes

| Keys | Action |
|------|--------|
| `pfx` + `%` | Split left / right (vertical border) |
| `pfx` + `"` | Split top / bottom (horizontal border) |
| `pfx` + `z` | Zoom pane fullscreen / restore |
| `pfx` + `x` | Kill pane (asks first) |
| `pfx` + `Space` | Cycle through preset layouts |
| `pfx` + `{` · `}` | Swap pane with previous / next |
| `pfx` + `Ctrl` + arrows | Resize pane (or just drag with the mouse) |
| `pfx` + `q` | Flash pane numbers |

## Sessions

| Keys / Command | Action |
|----------------|--------|
| `pfx` + `d` | Detach (session keeps running) |
| `pfx` + `s` | Interactive session switcher |
| `pfx` + `$` | Rename current session |
| `tmux new -s name` | New named session (from shell) |
| `tmux a -t name` | Attach to a session (from shell) |
| `tmux ls` | List sessions (from shell) |

## Plugins — TPM

| Keys | Action |
|------|--------|
| `pfx` + `I` | Install plugins listed in the config |
| `pfx` + `U` | Update plugins |
| `pfx` + `Alt` + `u` | Remove plugins no longer listed |

Installed: [`tpm`](https://github.com/tmux-plugins/tpm) · [`tmux-sensible`](https://github.com/tmux-plugins/tmux-sensible) · [catppuccin theme](https://github.com/dreamsofcode-io/catppuccin-tmux) (dreamsofcode fork).

---

## Config defaults set

- **Prefix:** `Ctrl-a`
- **Windows** start at index `1`
- **Mouse:** on
- **Copy mode:** vi keys, yank to system clipboard via `xclip`
- **True color** enabled (`Tc` override)
- **Escape time:** `0` (no delay after pressing Esc)
- **Reload:** `pfx` + `r`

> **Tip:** panes still number from `0` — the config sets `base-index 1` for windows
> but not `pane-base-index`. Add `setw -g pane-base-index 1` if you want panes to
> start at 1 too.
