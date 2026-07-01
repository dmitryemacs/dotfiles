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

    pkgs.python3
    pkgs.gnumake
    pkgs.clang
    pkgs.clang-tools
  ];
}
