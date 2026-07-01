{ pkgs, ... }:

{
  home.packages = [ pkgs.waybar ];

  home.file = {
    ".config/waybar/config".source   = ../../.config/waybar/config;
    ".config/waybar/style.css".source = ../../.config/waybar/style.css;
  };
}
