{ pkgs, config, lib, ... }: {
  nix = {
    enable = false; # Determinate Systems manages Nix
  };

  system.primaryUser = "dmitry";

  networking = {
    computerName = "Dmitry's MacBook Air";
    hostName = "leviathan";
  };

  system = {
    defaults = {
      dock = {
        autohide = true;
        autohide-delay = 0.0;
        orientation = "bottom";
        show-recents = false;
      };
      finder = {
        AppleShowAllExtensions = true;
        ShowPathbar = true;
        FXPreferredViewStyle = "clmv";
      };
      trackpad = {
        Clicking = true;
        TrackpadRightClick = true;
      };
      screencapture.location = "~/Desktop";
    };
    keyboard.enableKeyMapping = true;
    stateVersion = 5;
  };

  system.activationScripts.applications.text = lib.mkForce "";
  system.checks.text = lib.mkForce "";

  system.activationScripts.postActivation.text = ''
    echo "=== nix-darwin applied. User config is managed via home-manager. ==="
  '';
}
