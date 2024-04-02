{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    kicad
    freecad
    # cadquery
    librecad
    librepcb
    kalzium
  ];
}
