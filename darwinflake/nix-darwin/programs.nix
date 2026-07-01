{ pkgs, lib, ... }: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
    };
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

}
