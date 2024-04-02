{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
     gnome.cheese
  ];
}
