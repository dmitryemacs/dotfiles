{ config, pkgs, lib, ... }: {
  services.skhd = {
    enable = true;
    skhdConfig = ''
      # Launch Alacritty
      alt - return : open -a Alacritty

      # Reload skhd config
      alt + shift - r : skhd --reload
    '';
  };
}
