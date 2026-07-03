{ pkgs, ... }:

{
  home.file = {
    ".emacs.d/init.el".source = ../config/emacs/init.el;
  };
}
