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

    pkgs.python3
    pkgs.clang
    pkgs.clang-tools
  ];
}
