{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "a";
    clock24 = true;
    historyLimit = 5000;
    mouse = true;
    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -ga terminal-overrides ",*256col*:Tc"
    '';
  };
}
