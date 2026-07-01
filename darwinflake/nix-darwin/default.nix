{ lib, ... }: {
  imports = [
    ./system.nix
    ./packages.nix
    ./programs.nix
  ];
}
