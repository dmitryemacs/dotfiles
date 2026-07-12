{ config, pkgs, lib, ... }: {
  imports = [
    ./packages.nix
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/tmux.nix
    ./programs/skhd.nix
    ./programs/neovim.nix
  ];

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  # home.file = {
  #  ".emacs.d/init.el".source = ../../.config/emacs/init.el;
  #  ".emacs.d/modules".source = ../../.config/emacs/modules;
  # };
}
