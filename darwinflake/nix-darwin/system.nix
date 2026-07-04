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

  system.defaults = {
    CustomUserPreferences = {
      "com.apple.symbolichotkeys" = {
        AppleSymbolicHotKeys = {
          # Spotlight → Ctrl+Opt+Enter
          "64" = {
            enabled = true;
            value = {
              type = "standard";
              parameters = [ 65535 36 786432 ];
            };
          };
          # Select next input source → Cmd+Space
          "61" = {
            enabled = true;
            value = {
              type = "standard";
              parameters = [ 32 49 1048576 ];
            };
          };
        };
      };
    };
  };

  system.activationScripts.postActivation.text = ''
    echo "=== nix-darwin applied. User config is managed via home-manager. ==="
  '';
}
