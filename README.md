# dotfiles

Личные конфигурационные файлы, управляемые через Nix flakes на macOS и Linux.

## Платформы

| Платформа | Хост | Конфиг | Подход |
|-----------|------|--------|--------|
| **macOS** (Apple Silicon) | `leviathan` | `darwinflake/` | nix-darwin + home-manager |
| **Linux** (x86_64, NixOS) | — | `nixflake/` | home-manager (standalone) |

---

## darwinflake — macOS

`darwinflake/` управляет MacBook через [nix-darwin](https://github.com/LnL7/nix-darwin) и [home-manager](https://github.com/nix-community/home-manager).

### Быстрый старт на новом Mac

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
git clone https://github.com/dmitryemacs/dotfiles ~/Source/dotfiles
nix run nix-darwin -- switch --flake ~/Source/dotfiles/darwinflake
```

После ребута (опционально) — симлинк для Oh My Tmux!:

```bash
ln -sf ~/Source/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/Source/dotfiles/.tmux.conf.local ~/.tmux.conf.local
```

### nix-darwin (системный уровень)

| Модуль | Что делает |
|--------|-----------|
| `nix-darwin/system.nix` | Dock (autohide), Finder (pathbar, расширения), Trackpad (tap, right click), скриншоты на Desktop, hostname `leviathan` |
| `nix-darwin/packages.nix` | btop, cabextract, cmake, coreutils, emacs, fd, firefox, ffmpeg, git, htop, k6, neovim, ninja, opencode, nodejs, p7zip, pipx, python3, ripgrep, smartmontools, tmux, tree-sitter, unzip, wget, zip |
| `nix-darwin/programs.nix` | Zsh (системный), GPG agent с SSH-поддержкой |

### home-manager (пользовательский уровень)

| Модуль | Что делает |
|--------|-----------|
| `home-manager/packages.nix` | merve |
| `home-manager/programs/git.nix` | Git user.name / user.email |
| `home-manager/programs/zsh.nix` | Алиасы (ll, g, v, top, up/down/build/restart для docker), autosuggestions, подсветка синтаксиса, история 10k, кастомный PROMPT |
| `home-manager/programs/tmux.nix` | Tmux vi-mode, префикс `a`, 24ч часы, история 5k, мышь, true-color |

---

## nixflake — Linux (NixOS)

`nixflake/` использует standalone home-manager на NixOS с полноценным DE.

| Модуль | Что делает |
|--------|-----------|
| `modules/cli.nix` | bat, ripgrep, fd, fzf, jq, btop, eza, opencode, chromium, emacs, python3, make, clang |
| `modules/git.nix` | Git user.name / user.email |
| `modules/tmux.nix` | Oh My Tmux! из `.tmux/` |
| `modules/neovim.nix` | Neovim с Lua-конфигом (lazy.nvim, LSP, Telescope) |
| `modules/alacritty.nix` | Alacritty |
| `modules/wofi.nix` | Wofi (лаунчер) |
| `modules/hyprland.nix` | Hyprland WM, hyprpaper, hyprlock, waybar, cliphist, grim/slurp, аудио/яркость, dunst, rofi |
| `modules/waybar.nix` | Waybar (статус-бар) |

Пересобрать:

```bash
home-manager switch --flake ~/Source/dotfiles/nixflake
```

---

## Устаревшие конфиги (ещё не в Nix)

| Путь | Описание |
|------|---------|
| `.Xdefaults` | Цветовая схема и биндинги для URxvt / XTerm |
| `.xinitrc` | Запуск X11-сессии (i3, picom, polybar, раскладка) |
| `.bash_profile` | Скорость клавиатуры для X11 |

---

## Конфиги редакторов

`.config/` содержит конфиги, которые home-manager симлинкает:

| Путь | Редактор / WM |
|------|--------------|
| `nvim/` | Neovim Lua (lazy.nvim, LSP, Mason, Telescope, conform) |
| `emacs/` | Vanilla Emacs (MELPA, Ivy, Magit) |
| `doom/` | Doom Emacs (Evil, Ivy, Magit, Org-roam, Copilot) |

---

## Скрипты

| Скрипт | Назначение |
|--------|-----------|
| `weather.sh` | Погода в Пинске с Gismeteo |
| `money.sh` / `dollar.sh` | Курс доллара с myfin.by |
| `battery.sh` / `mem.sh` / `temp.sh` / `disk.sh` | Мониторинг FreeBSD |

---

## FreeBSD

`bsd/` — конфиги FreeBSD (ядро `MYKERNEL`, `rc.conf`, `loader.conf`, `sysctl.conf`, X.org Intel DRM).
