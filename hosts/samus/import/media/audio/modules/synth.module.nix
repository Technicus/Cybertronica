{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    sonic-pi
  ];
}
