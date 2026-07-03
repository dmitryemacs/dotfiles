{ config, pkgs, lib, ... }:

let
  dataDir = "${config.home.homeDirectory}/.local/state/phpfpm";
in {
  home.file."${dataDir}/conf/php-fpm.conf".text = ''
    [global]
    pid = ${dataDir}/php-fpm.pid
    error_log = ${dataDir}/logs/php-fpm.log
    daemonize = no
    include=${dataDir}/conf/pool.d/*.conf
  '';

  home.file."${dataDir}/conf/pool.d/www.conf".text = ''
    [www]
    listen = ${dataDir}/php-fpm.sock
    listen.mode = 0660
    pm = dynamic
    pm.max_children = 5
    pm.start_servers = 2
    pm.min_spare_servers = 1
    pm.max_spare_servers = 3
    security.limit_extensions = .php
  '';

  systemd.user.services.phpfpm = {
    Unit = {
      Description = "PHP FastCGI Process Manager";
      After = [ "network.target" ];
    };

    Service = {
      Type = "simple";
      ExecStartPre = "${pkgs.bash}/bin/bash -c 'mkdir -p ${dataDir}/{logs,conf/pool.d}'";
      ExecStart = "${pkgs.php}/bin/php-fpm --nodaemonize -y ${dataDir}/conf/php-fpm.conf";
      ExecReload = "${pkgs.coreutils}/bin/kill -USR2 $MAINPID";
      PrivateDevices = false;
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
