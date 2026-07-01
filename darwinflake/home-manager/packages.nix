{ pkgs, ... }: {
  home.packages = with pkgs; [
    merve
  ];
}
