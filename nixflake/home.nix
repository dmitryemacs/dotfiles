{ config, pkgs, ... }:

{
  imports = import ./modules/default.nix;

  home.username = "dima";
  home.homeDirectory = "/home/dima";
  home.stateVersion = "26.05";

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
