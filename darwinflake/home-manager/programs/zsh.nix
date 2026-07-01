{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    history = {
      size = 10000;
      save = 10000;
      path = "$HOME/.zsh_history";
      expireDuplicatesFirst = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      share = true;
    };

    shellAliases = {
      ll = "ls -la";
      la = "ls -A";
      l = "ls -F";
      ls = "ls --color=auto";
      grep = "grep --color=auto";
      egrep = "egrep --color=auto";
      fgrep = "fgrep --color=auto";
      g = "git";
      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";
      gco = "git checkout";
      v = "nvim";
      top = "btop";
      down = "docker compose down -v";
      up = "docker compose up --build";
      build = "docker compose build";
      restart = "docker compose restart";
    };

    localVariables = {
      HISTFILE = "$HOME/.zsh_history";
      SAVEHIST = "10000";
      HISTSIZE = "10000";
    };

    initContent = ''
      . "$HOME/.local/bin/env"

      # Options
      setopt AUTO_CD
      setopt PUSHD_IGNORE_DUPS
      setopt PUSHD_SILENT
      setopt CORRECT
      setopt NO_CASE_GLOB

      PROMPT='%F{yellow}%~%f %# '
    '';
  };

  programs.bash.enable = true;
}
