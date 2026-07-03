{ pkgs, ... }:

{
  home.packages = [ pkgs.wofi ];

  home.file = {
    ".config/wofi/config".source = ../config/wofi/config;
    ".config/wofi/style.css".source = ../config/wofi/style.css;
  };
}
