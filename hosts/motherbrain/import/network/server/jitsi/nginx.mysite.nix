    { config, pkgs, lib, ... }:
    let
      # Variables to be changed
      sitename = "mysite";
      docroot = "/var/www/mysite/web";
      domainname = "mysite.com";
      cronpath = "cron/somestring";
      cronuser = "someuser";
      crontime = "*-*-* 18:00:00";
    in {
      services.nginx = {
        virtualHosts = {
          "${domainname}" = {
     
            # This is the document root setting.
            # In this case Drupal should be inside /var/www/${sitename}
            # and serve websites from inside of its 'web' directory.
            root = "${docroot}";
     
            # Set up certificate renewal.
            forceSSL = true;
            enableACME = true;
     
            # Set up nginx for Drupal.
            locations."~ '\.php$|^/update.php'" = {
                extraConfig = ''
                  include ${pkgs.nginx}/conf/fastcgi_params;
                  include ${pkgs.nginx}/conf/fastcgi.conf;
                  fastcgi_pass  unix:${config.services.phpfpm.pools.${sitename}.socket};
                  fastcgi_index index.php;
     
                  fastcgi_split_path_info ^(.+?\.php)(|/.*)$;
                  # Ensure the php file exists. Mitigates CVE-2019-11043
                  try_files $fastcgi_script_name =404;
     
                  # Block httpoxy attacks. See https://httpoxy.org/.
                  fastcgi_param HTTP_PROXY "";
                  fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
                  fastcgi_param PATH_INFO $fastcgi_path_info;
                  fastcgi_param QUERY_STRING $query_string;
                  fastcgi_intercept_errors on;
                '';
            };
            locations."= /favicon.ico" = {
              extraConfig = ''
                log_not_found off;
                access_log off;
              '';
            };
            locations."= /robots.txt" = {
              extraConfig = ''
                allow all;
                log_not_found off;
                access_log off;
              '';
            };
            locations."~ \..*/.*\.php$" = {
              extraConfig = ''
                return 403;
              '';
            };
            locations."~ ^/sites/.*/private/" = {
              extraConfig = ''
                return 403;
              '';
            };
            locations."~ ^/sites/[^/]+/files/.*\.php$" = {
              extraConfig = ''
                deny all;
              '';
            };
            # Allow "Well-Known URIs" as per RFC 5785
            locations."~* ^/.well-known/" = {
              extraConfig = ''
                allow all;
              '';
            };
            locations."/" = {
              extraConfig = ''
               try_files $uri /index.php?$query_string;
              '';
            };
            locations."@rewrite" = {
              extraConfig = ''
                rewrite ^ /index.php;
              '';
            };
            locations."~ /vendor/.*\.php$" = {
              extraConfig = ''
                deny all;
                return 404;
              '';
            };
            locations."~* \.(js|css|png|jpg|jpeg|gif|ico|svg)$" = {
              extraConfig = ''
                try_files $uri @rewrite;
                expires max;
                log_not_found off;
              '';
            };
            locations."~ ^/sites/.*/files/styles/" = {
              extraConfig = ''
                try_files $uri @rewrite;
              '';
            };
            locations."~ ^(/[a-z\-]+)?/system/files/" = {
              extraConfig = ''
                try_files $uri /index.php?$query_string;
              '';
            };
          };
     
          # Redirect 'www' to 'non-www'
          # and set up certificate renewal for 'www'.
          "www.${domainname}" = {
            forceSSL = true;
            enableACME = true;
            globalRedirect = "${domainname}";
          };
        };
      };
     
      # Set up a PHP-FPM pool for this website.
      services.phpfpm.pools = {
        ${sitename} = {
          user = "nginx";
          settings = {
            "listen.owner" = config.services.nginx.user;
            "pm" = "dynamic";
            "pm.max_children" = 32;
            "pm.max_requests" = 500;
            "pm.start_servers" = 2;
            "pm.min_spare_servers" = 2;
            "pm.max_spare_servers" = 5;
            "php_admin_value[error_log]" = "stderr";
            "php_admin_flag[log_errors]" = true;
            "catch_workers_output" = true;
          };
          phpEnv."PATH" = lib.makeBinPath [ pkgs.php ];
        };
      };
     
      # Optionally set up a systemd service that will trigger
      # Drupal's cron URL.
      systemd.services."${sitename}-cron" = {
        path = [ pkgs.curl ];
        script = ''
          curl "https://${domainname}/${cronpath}"
        '';
        unitConfig = {
          Description = "Cron trigger for ${sitename}";
        };
        serviceConfig = {
          Type = "oneshot";
          User = "${cronuser}";
        };
      };
     
      systemd.timers."${sitename}-cron" = {
        unitConfig = {
          Description = "Timer for ${sitename} cron trigger";
          RefuseManualStart = "no";
          RefuseManualStop = "no";
        };
        wantedBy = [ "timers.target" ];
        partOf = [ "${sitename}-cron.service" ];
        timerConfig = {
          OnCalendar = "${crontime}";
          Unit = "${sitename}-cron.service";
          Persistent = true;
        };
      };     
    }
