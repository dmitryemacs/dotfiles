{ lib, ... }: {
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./system.nix
    ./packages.nix
    ./programs.nix
    #./mariadb.nix
    #./nginx.nix
  ];
}
