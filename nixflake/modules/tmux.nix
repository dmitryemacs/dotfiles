{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    clock24 = true;
    keyMode = "vi";
    terminal = "tmux-256color";
    historyLimit = 10000;
    shortcut = "a";
    escapeTime = 10;
    baseIndex = 1;
    plugins = with pkgs; [
      tmuxPlugins.cpu
      tmuxPlugins.sensible
    ];
    extraConfig = ''
      set -g default-terminal "tmux-256color"
      set -ga terminal-overrides ",*256col*:Tc"
      set -ga terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q'

      set -g mouse on
      set -g base-index 1
      setw -g pane-base-index 1

      set -g status-style bg=default
      set -g status-left-length 60
      set -g status-right-length 120
      set -g status-left '#[fg=#cba6f7,bold] #S '
      set -g status-right '#[fg=#a6e3a1]%Y-%m-%d #[fg=#89b4fa]%H:%M '
      set -g status-position top
      setw -g window-status-current-style fg=#89b4fa,bold
      setw -g window-status-style fg=#6c7086

      set -g pane-border-style fg=#313244
      set -g pane-active-border-style fg=#89b4fa

      set -g message-style fg=#cdd6f4,bg=#313244
      set -g message-command-style fg=#cdd6f4,bg=#313244
    '';
  };
}
