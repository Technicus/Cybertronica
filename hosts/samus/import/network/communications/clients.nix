{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    # Email clients
    kmail
    korganizer
    thunderbird

    # Matric Clients
    element-desktop
    fluffychat
    cinny-desktop
    cinny
    quaternion
    iamb
    matrix-commander
    
    # Multichat Client   
    pidgin
    
    # IRC Clients
    ircdog
    irccat
    irccloud
    kvirc
    
    # Torrent
    libsForQt5.ktorrent	
    mktorrent

    # Discord Client
    # https://nixos.wiki/wiki/Discord
    discord
    #discord-ptb
    #discord-canary
    (pkgs.discord.override {
      # remove any overrides that you don't want
      withOpenASAR = true;
      withVencord = true;
    })
  ];

}
