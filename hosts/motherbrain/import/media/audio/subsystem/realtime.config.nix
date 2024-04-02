{ config, pkgs, ... }: {

  imports = [
    /home/utility/Audio/musnix/
  ];
  
  security.rtkit.enable = true;
  
  musnix.enable = true;
  users.users.technicus.extraGroups = [ "audio" ];

}

