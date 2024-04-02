{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    # Print to PDF
    cups-pdf-to-pdf
  ];
}
