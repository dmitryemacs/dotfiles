{ pkgs, ... }: {
  home.packages = with pkgs; [
    android-tools
    bat
    eza
    merve
    meslo-lgs-nf
  ];
}
