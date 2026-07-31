# Changelog

All notable changes to zimablue.nvim will be documented in this file.

## Unreleased

- Added headless specs for colorscheme loading, setup variants, terminal colors, style overrides, callbacks, representative plugin highlights, and generated extras.
- Added smoke tests for all variants and customization callbacks.
- Added GitHub Actions CI for Neovim stable/nightly, smoke tests, specs, generated extras checks, and help docs checks.
- Added Vim help documentation at `doc/zimablue.txt`.
- Added generated CUI/TUI/terminal extras for Aerc, Aider, Alacritty, Btop, Delta, eza, Fish, Fish themes, Foot, Fzf, Ghostty, GitUI, GNOME Terminal, Helix, iSH, Kitty, Konsole, Lazygit, process-compose, QTerminal, st, Spotify Player, Terminator, Termux, Tilix, Tmux, Vim, WezTerm, Windows Terminal, Xfce Terminal, Xresources, Yazi, Zathura, and Zellij.
- Changed highlight generation so `on_highlights` receives the generated highlight table before groups are applied.
- Applied `styles.comments`, `styles.keywords`, `styles.functions`, and `styles.variables` to core Treesitter groups.
