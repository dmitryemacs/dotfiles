{ config, pkgs, lib, ... }:

let
  dataDir = "${config.home.homeDirectory}/.local/state/mysql";
in {
  systemd.user.services.mariadb = {
    Unit = {
      Description = "MariaDB server";
      After = [ "network.target" ];
    };

    Service = {
      Type = "simple";
      ExecStart = "${pkgs.mariadb}/bin/mariadbd --datadir=${dataDir} --socket=/tmp/mariadb.sock";
      ExecStartPre = "${pkgs.bash}/bin/bash -c 'if [ ! -d \"${dataDir}/mysql\" ]; then ${pkgs.mariadb}/bin/mariadb-install-db --datadir=${dataDir}; fi'";
      ExecReload = "${pkgs.coreutils}/bin/kill -HUP $MAINPID";
      PrivateDevices = false;
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
