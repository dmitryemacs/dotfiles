{ pkgs, ... }: {
  home.packages = with pkgs; [
    bat
    eza
    merve
    meslo-lgs-nf
    wireshark
  ];
}
