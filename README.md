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

### neovim & lazygit

These are installed by their own cross-platform scripts (not part of `./setup`):

```sh
./scripts/install-neovim    # builds neovim v0.12.3 from source (macOS + Ubuntu)
./scripts/install-lazygit   # brew on macOS; latest GitHub release binary on Ubuntu
```

## macOS notes

- The login shell is switched to Homebrew bash (`/opt/homebrew/bin/bash`, 5.x) via `chsh`,
  so alacritty and tmux pick it up without any hardcoded paths.
- The terminal font is installed via the Homebrew cask
  `font-ubuntu-mono-nerd-font` (hand-placing fonts in `~/Library/Fonts`
  doesn't reliably register with Core Text).
- **Caps Lock → Esc**: map it manually in System Settings → Keyboard →
  Keyboard Shortcuts → Modifier Keys → Caps Lock → Escape.
- neovim, alacritty, etc. come from Homebrew.

## Ubuntu notes

- Fonts are stowed to `~/.local/share/fonts` + `fc-cache`.
- Caps Lock → Esc is mapped with gnome-tweaks.
- A recent neovim usually has to be built from source (apt's is too old); see the
  commented instructions at the top of `setup`.
