{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    netdata
    nmap
    wireshark
  ];
}
