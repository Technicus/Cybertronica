{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    blender
    gimp
    inkscape
    # inkscape-with-extensions
    # inkscape-extensions.inkcut
    # inkscape-extensions.hexmap
    # inkscape-extensions.textext
    # inkscape-extensions.silhouette
    # inkscape-extensions.applytransforms
    krita
    scribus
    pencil
    synfigstudio
    

  ];
}
