{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    freeoffice

    libreoffice
    libreoffice-qt

    hunspell
    hunspellDicts.uk_UA
    hunspellDicts.th_TH

    # onlyoffice-bin

    pro-office-calculator

    # moved to: /etc/nixos/import/network/communications/clients.nix
    # kmail
    # korganizer
    # thunderbird

    texstudio

    theme-obsidian2
    iconpack-obsidian
    obsidian
    # electron_28
    # nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    #   "obsidian"
    # ];
  ];

  # Install old Electron version for Obsidian.
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];
  

}
