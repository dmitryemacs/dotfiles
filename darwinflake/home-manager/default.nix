{ config, pkgs, lib, ... }: {
  imports = [
    ./packages.nix
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/tmux.nix
    ./programs/skhd.nix
  ];

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
