{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    vlc
    amarok
    clementine
    sayonara
    kaffeine
    plex-media-player
    tplay
  ];
}
