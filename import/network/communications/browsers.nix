{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    chromium
    brave
    firefox
    opera
  ];
}
