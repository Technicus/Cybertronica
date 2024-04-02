{ config, pkgs, ... }: {

  services.onlyoffice = {
    enable = true;
    hostname = "localhost";
    #services.nginx.virtualHosts."localhost".listen = [ { addr = "127.0.0.1"; port = 8080; } ];
  };

  services.nginx.virtualHosts."localhost".listen = [ 
    { addr = "127.0.0.1"; port = 8080; } ];

#  services.onlyoffice = {
#    enable = true;
#    hostname = "localhost";
#  };

#  let
#    office = pkgs.libreoffice-fresh-unwrapped;
#  in {
#    environment.sessionVariables = {
#      PYTHONPATH = "${office}/lib/libreoffice/program";
#      URE_BOOTSTRAP = "vnd.sun.star.pathname:${office}/lib/libreoffice/program/fundamen>
#    };
#  }

}
