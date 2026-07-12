{ pkgs, ... }: {
  home.packages = [ pkgs.zsh-powerlevel10k ];

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "docker"
        "sudo"
        "macos"
      ];
    };

    history = {
      size = 10000;
      save = 10000;
      path = "$HOME/.zsh_history";
      expireDuplicatesFirst = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      share = true;
    };

    initContent = ''
      . "$HOME/.local/bin/env"

      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

      # Powerlevel10k — тёмная (Catppuccin Mocha) конфигурация
      POWERLEVEL9K_MODE=nerdfont-complete
      POWERLEVEL9K_PROMPT_ON_NEWLINE=true
      POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
      POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─"
      POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰─"

      POWERLEVEL9K_OS_ICON_BACKGROUND=""
      POWERLEVEL9K_OS_ICON_FOREGROUND="#cdd6f4"
      POWERLEVEL9K_DIR_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_DIR_FOREGROUND="#89b4fa"
      POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="#cdd6f4"
      POWERLEVEL9K_DIR_HOME_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_DIR_HOME_FOREGROUND="#a6e3a1"
      POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="#a6e3a1"
      POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="#f38ba8"

      POWERLEVEL9K_STATUS_OK=false
      POWERLEVEL9K_STATUS_ERROR=true
      POWERLEVEL9K_STATUS_ERROR_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_STATUS_ERROR_FOREGROUND="#f38ba8"
      POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_COLOR="#f38ba8"

      POWERLEVEL9K_VCS_CLEAN_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_VCS_CLEAN_FOREGROUND="#a6e3a1"
      POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="#f9e2af"
      POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="#f38ba8"

      POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="#f5c2e7"

      POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="#bac2de"
      POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="#f38ba8"

      POWERLEVEL9K_TIME_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_TIME_FOREGROUND="#a6adc8"
      POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

      POWERLEVEL9K_BACKGROUND="#1e1e2e"
      POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
      POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time context time)

      # Editor
      export EDITOR="emacsclient -n"
      export VISUAL="emacsclient -n"
      export ALTERNATE_EDITOR=""

      # Базовые алиасы
      alias ll='eza -la'
      alias la='eza -a'
      alias l='eza'
      alias ..='cd ..'
      alias ...='cd ../..'
      alias grep='grep --color=auto'
      alias df='df -h'
      alias cat='bat'
    '';
  };
}
