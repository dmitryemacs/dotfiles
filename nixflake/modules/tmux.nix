{ pkgs, ... }:

{
  home.packages = [ pkgs.tmux ];

  home.file = {
    ".config/tmux/tmux.conf".source = ../../.tmux/.tmux.conf;
    ".config/tmux/tmux.conf.local".source = ../../.tmux/.tmux.conf.local;
  };
}
