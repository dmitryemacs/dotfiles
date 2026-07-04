{ config, pkgs, lib, ... }: {
  services.skhd = {
    enable = true;
    config = ''
      # Launch Alacritty
      alt - return : open -a Alacritty

      # Reload skhd config
      alt + shift - r : skhd --reload
    '';
  };
}
