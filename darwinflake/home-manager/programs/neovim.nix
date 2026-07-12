{ pkgs, ... }:

let
  nvimDir = ../../../nixflake/config/nvim;
in
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    initLua = builtins.readFile (nvimDir + "/init.lua");
  };

  home.file = {
    ".config/nvim/lua".source = nvimDir + "/lua";
  };
}
