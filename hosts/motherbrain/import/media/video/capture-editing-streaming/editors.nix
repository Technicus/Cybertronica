{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    openshot-qt
    kdenlive
    shotcut
  ];
}
