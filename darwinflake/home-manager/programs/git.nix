{ pkgs, ... }: {
  programs.git = {
    enable = true;
    settings.user.name = "dmitryemacs";
    settings.user.email = "dimadimof81@gmail.com";
  };
}
