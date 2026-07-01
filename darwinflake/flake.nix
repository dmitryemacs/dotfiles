{
  description = "Dmitry's macOS Nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager, ... }: {
    darwinConfigurations."leviathan" = nix-darwin.lib.darwinSystem {
      modules = [
        ./nix-darwin/default.nix
        home-manager.darwinModules.home-manager
        {
          nixpkgs.hostPlatform = "aarch64-darwin";
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.dmitry = { lib, ... }: {
              imports = [ ./home-manager ];
              home.homeDirectory = lib.mkForce "/Users/dmitry";
              home.username = "dmitry";
            };
          };
        }
      ];
    };
  };
}
