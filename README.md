# dotfiles

Configuration files for bash, neovim, tmux, alacritty and fonts.
Works on **macOS** (Homebrew) and **Ubuntu** (apt).

## Install

```sh
git clone <this-repo> ~/.dotfiles
cd ~/.dotfiles
./setup
```

`./setup` detects the OS and:

- installs the terminal stack and language tooling (Homebrew on macOS, apt on Ubuntu),
- stows `alacritty`, `tmux`, `nvim`, `bashrc` (and `fonts` on Ubuntu),
- wires up `~/.bashrc.d`.

Restart your terminal afterwards (or run `exec bash -l`).

## macOS notes

- The login shell is switched to Homebrew bash (`/opt/homebrew/bin/bash`, 5.x) via `chsh`,
  so alacritty and tmux pick it up without any hardcoded paths.
- Fonts are symlinked into `~/Library/Fonts` (macOS Core Text doesn't read
  `~/.local/share/fonts`).
- **Caps Lock → Esc**: map it manually in System Settings → Keyboard →
  Keyboard Shortcuts → Modifier Keys → Caps Lock → Escape.
- neovim, alacritty, etc. come from Homebrew.

## Ubuntu notes

- Fonts are stowed to `~/.local/share/fonts` + `fc-cache`.
- Caps Lock → Esc is mapped with gnome-tweaks.
- A recent neovim usually has to be built from source (apt's is too old); see the
  commented instructions at the top of `setup`.
