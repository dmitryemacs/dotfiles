{ pkgs, ... }: {
  launchd.user.agents.mariadb = {
    path = [ pkgs.mariadb ];
    script = ''
      if [ ! -e "$MYSQLDATA/data" ]; then
        mysql_install_db --datadir="$MYSQLDATA"
      fi
      exec mysqld --datadir="$MYSQLDATA" --socket=/tmp/mysql.sock
    '';
    serviceConfig = {
      KeepAlive = true;
      RunAtLoad = true;
      EnvironmentVariables = {
        MYSQLDATA = "/Users/dmitry/.local/var/mysql";
      };
    };
  };
}
