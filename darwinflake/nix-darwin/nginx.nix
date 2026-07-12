{ pkgs, ... }: {
  launchd.user.agents.nginx = {
    path = [ pkgs.nginx ];
    script = ''
      NGINX_DATA=/Users/dmitry/.local/var/nginx

      mkdir -p "$NGINX_DATA/html" "$NGINX_DATA/logs"

      if [ ! -f "$NGINX_DATA/html/index.html" ]; then
        cat > "$NGINX_DATA/html/index.html" << 'EOF'
<!DOCTYPE html>
<html><head><title>nginx</title></head><body><h1>Welcome to nginx!</h1></body></html>
EOF
      fi

      if [ ! -f "$NGINX_DATA/mime.types" ]; then
        cp "${pkgs.nginx}/conf/mime.types" "$NGINX_DATA/mime.types"
      fi

      if [ ! -f "$NGINX_DATA/nginx.conf" ]; then

        cat > "$NGINX_DATA/nginx.conf" << CONF
worker_processes  auto;
daemon off;
pid              $NGINX_DATA/logs/nginx.pid;
error_log        $NGINX_DATA/logs/error.log;

events {
    worker_connections  1024;
}

http {
    include       $NGINX_DATA/mime.types;
    default_type  application/octet-stream;
    access_log    $NGINX_DATA/logs/access.log;

    server {
        listen       127.0.0.1:8080;
        server_name  localhost;
        root         $NGINX_DATA/html;

        location / {
            index  index.html index.htm;
        }
    }
}
CONF
      fi

      exec nginx -c "$NGINX_DATA/nginx.conf"
    '';
    serviceConfig = {
      KeepAlive = true;
      RunAtLoad = true;
    };
  };
}
