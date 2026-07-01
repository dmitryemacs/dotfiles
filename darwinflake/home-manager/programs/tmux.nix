{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "a";
    clock24 = true;
    historyLimit = 5000;
  };
}
