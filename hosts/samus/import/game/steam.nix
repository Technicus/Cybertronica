{ config, pkgs, ... }: {
  
#{
#  allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
#    "steam"
#    "steam-original"
#    "steam-run"
#  ];
#}
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };

}
