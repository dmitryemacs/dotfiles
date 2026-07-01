# dotfiles

Personal configuration files and scripts for a dual-environment Linux/FreeBSD setup on a ThinkPad.

## Overview

| Environment | Window Manager | Compositor | Status Bar | Terminal |
|-------------|---------------|-----------|------------|----------|
| **Wayland** | Hyprland | built-in | Waybar | Alacritty |
| **X11** | i3 | Picom | Polybar | Alacritty / URxvt |

## Editors

- **Neovim** — Lua config with lazy.nvim, LSP (Mason), Telescope, Neo-tree, conform
- **Doom Emacs** — Evil, Ivy, Magit, Org-roam, Copilot
- **Emacs** (vanilla fallback) — MELPA, Ivy, Magit, ace-window

## Shell & Multiplexer

- **Tmux** — Oh My Tmux! framework, Catppuccin theme, Nerd Font icons
- **Bash** — `.bash_profile` with keyboard rate tuning

## Configs

| Path | Description |
|------|-------------|
| `alacritty/` | Terminal emulator (Hack Nerd Font, opacity, blur) |
| `doom/` | Doom Emacs modules, config, packages |
| `hypr/` | Hyprland WM, hyprpaper, hyprlock |
| `i3/` | i3 WM Vim-style navigation, rofi launcher |
| `nvim/` | Neovim Lua config with plugins |
| `picom/` | X11 compositor (shadows, blur, animations) |
| `polybar/` | Status bar with custom scripts |
| `rofi/` | Application launcher |
| `waybar/` | Wayland status bar (Hyprland) |
| `emacs/` | Vanilla Emacs fallback config |

## Scripts

| Script | Purpose |
|--------|---------|
| `weather.sh` | Gismeteo weather for Pinsk |
| `money.sh` / `dollar.sh` | USD exchange rate from myfin.by |
| `battery.sh` / `mem.sh` / `temp.sh` / `disk.sh` | FreeBSD system monitoring |

## Nix Flake

`nixflake/` — Home Manager flake managing the entire desktop environment on NixOS.

| Module | Purpose |
|--------|---------|
| `cli.nix` | CLI tools (bat, ripgrep, fd, fzf, btop, eza, nautilus, chromium, emacs …) |
| `git.nix` | Git config |
| `tmux.nix` | Tmux config |
| `neovim.nix` | Neovim with Lua config, lazy.nvim, LSP, Telescope |
| `alacritty.nix` | Alacritty terminal |
| `wofi.nix` | Wofi launcher |
| `hyprland.nix` | Hyprland WM, hyprpaper, hyprlock, waybar, screenshot tools, audio/brightness |
| `waybar.nix` | Waybar status bar config |

Platform: `x86_64-linux` · Channel: `nixos-unstable`

## FreeBSD Config

`bsd/` — FreeBSD system configuration for the same ThinkPad: kernel (`MYKERNEL`), `rc.conf`, `loader.conf`, `sysctl.conf`, X.org Intel DRM setup.
