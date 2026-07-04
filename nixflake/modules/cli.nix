{ pkgs, ... }:

{
  home.packages = [
    pkgs.nodejs
    pkgs.curl

    pkgs.bat
    pkgs.ripgrep
    pkgs.fd
    pkgs.fzf
    pkgs.jq
    pkgs.btop
    pkgs.eza
    pkgs.opencode

    pkgs.nautilus
    pkgs.chromium
    pkgs.emacs
    pkgs.telegram-desktop

    pkgs.python3
    pkgs.gnumake
    pkgs.gcc

    pkgs.ldc
    pkgs.dub
    pkgs.dscanner

    pkgs.php
    pkgs.mariadb

  ];
}
