{ config, pkgs, ... }: {

  environment.systemPackages = [
    pkgs.libsForQt5.sddm-kcm
    pkgs.sddm-chili-theme
    pkgs.libsForQt5.sddm
    pkgs.where-is-my-sddm-theme
    pkgs.catppuccin-sddm-corners
  ];

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

  # SDDM background image
  # https://discourse.nixos.org/t/sddm-background-image/5495/2 

  # Black Screen on SDDM start since Plasma 5.12 #35013
  # https://github.com/NixOS/nixpkgs/issues/35013
  # $ rm -fr $HOME/.cache/*/qmlcache
  # $ systemctl restart display-manager

}
