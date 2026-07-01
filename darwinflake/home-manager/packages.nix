{ pkgs, ... }: {
  home.packages = with pkgs; [
    merve
    zsh-powerlevel10k
    meslo-lgs-nf
  ];
}
