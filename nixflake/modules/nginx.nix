{ config, pkgs, lib, ... }:

let
  dataDir = "${config.home.homeDirectory}/.local/state/nginx";
  cfgFile = "${dataDir}/conf/nginx.conf";
  phpfpmSock = "${config.home.homeDirectory}/.local/state/phpfpm/php-fpm.sock";
in {
  home.file."${dataDir}/conf/nginx.conf".text = ''
    error_log ${dataDir}/logs/error.log;
    pid ${dataDir}/nginx.pid;

    events {}

    http {
      access_log ${dataDir}/logs/access.log;

      server {
        listen 8080;
        root ${config.home.homeDirectory}/public_html;
        index index.php index.html;

        location / {
          try_files $uri $uri/ =404;
        }

        location ~ \.php$ {
          fastcgi_pass unix:${phpfpmSock};
          fastcgi_index index.php;
          fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
          include ${pkgs.nginx}/conf/fastcgi_params;
        }
      }
    }
  '';

  systemd.user.services.nginx = {
    Unit = {
      Description = "Nginx web server";
      After = [ "network.target" ];
    };

    Service = {
      Type = "forking";
      ExecStartPre = "${pkgs.bash}/bin/bash -c 'mkdir -p ${dataDir}/logs'";
      ExecStart = "${pkgs.nginx}/bin/nginx -p ${dataDir} -c ${cfgFile}";
      ExecReload = "${pkgs.coreutils}/bin/kill -HUP $MAINPID";
      ExecStop = "${pkgs.coreutils}/bin/kill -QUIT $MAINPID";
      PrivateDevices = false;
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
