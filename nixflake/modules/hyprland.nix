{ pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprland
    hyprpaper
    hyprlock
    hyprpicker
    waybar
    cliphist
    wl-clipboard
    wlogout
    playerctl
    grim
    slurp
  ];

  home.file = {
    ".config/hypr/hyprland.conf".source  = ../../.config/hypr/hyprland.conf;
    ".config/hypr/hyprpaper.conf".source = ../../.config/hypr/hyprpaper.conf;
    ".config/hypr/hyprlock.conf".source  = ../../.config/hypr/hyprlock.conf;
    ".config/hypr/gamemode.sh".source    = ../../.config/hypr/gamemode.sh;
    ".config/hypr/fix-portals.sh".source = ../../.config/hypr/fix-portals.sh;
  };
}
