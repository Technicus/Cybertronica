{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
     # Version mamagement
    git
    gitFull
    gitSVN
    subversion
    wget
    rsync
  ];
}
