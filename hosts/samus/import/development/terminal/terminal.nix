{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    alacritty
    alacritty-theme
    # gnomeExtensions.toggle-alacritty
    # python312Packages.pycritty
    # python311Packages.pycritty
    # pycritty
    # themix-gui
    
    cool-retro-term
    terminal-parrot
    
    terminator

    konsole
    # libsForQt5.konsole
    yakuake
    # qmlkonsole
  ];
}

