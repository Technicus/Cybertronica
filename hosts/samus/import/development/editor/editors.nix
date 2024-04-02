{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    kdevelop
    kate
    vim 
    neovim
    emacs
    kate
    kdevelop
    nano
    serial-studio
  ];
}
