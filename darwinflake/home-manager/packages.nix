{ pkgs, ... }: {
  home.packages = with pkgs; [
    merve
    wireshark
    zsh-powerlevel10k
    meslo-lgs-nf
  ];
}
