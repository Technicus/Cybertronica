# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      
      # General Package List
      ./import/base/packages.nix
      
      # Locale configuration
      ./import/base/locale.config.nix

      # Bootloader
      ./import/base/bootloader.config.nix

      # Development tools
      ./import/development/revision/revision.nix

      # software-features
      ./import/base/software-features.config.nix

      # Display server
      ./import/display/display.config.nix

      # Networking and Communications
      ./import/network/locale/hostname.nix
      ./import/network/connections/connections.config.nix
      ./import/network/wireless/bluetooth.nix
      ./import/network/tools/net_utils.nix
      ./import/network/communications/clients.nix
      
      # Servers
      ./import/network/server/nextcloud/nextcloud.config.nix
      # ./import/server/onlyoffice/documentserver.config.nix
      # ./import/network/server/drupal/drupal.config.nix

      # Web Browaser
      ./import/network/communications/browsers.nix

      # Office Productivity      
      ./import/office/print.nix
      ./import/office/pdf.nix
      ./import/office/suite.nix
      
      # System Administration
      ./import/management/accounts.nix 
      
      # Games
      ./import/game/steam.nix
      
      # Intelligent Systems
      ./import/projects/intelligence/intelligence.nix
      
      # Engineering
      ./import/engineering/tools.nix
      
      # Audio
      ./import/media/audio/audio.config.nix
    
      # Digital Autio Workstation
      ./import/media/audio/modules/daw.module.nix
      ./import/media/audio/modules/synth.module.nix
      
      # Media Players, Library Managers, and Dowmloaders      
      ./import/media/players-library-downloaders/codecs-encoders-decoders-transcoders.nix
      ./import/media/players-library-downloaders/downloaders.nix
      ./import/media/players-library-downloaders/players.nix

      # Video capture and editing
      ./import/media/video/display/settings.nix
      ./import/media/video/capture-editing-streaming/obs.config.nix
      ./import/media/video/capture-editing-streaming/editors.nix
      ./import/media/video/capture-editing-streaming/capture.nix
  
      # Graphics
      ./import/media/graphics/projectm.nix
      ./import/media/graphics/editors.nix 
      
      # Virtualization
      ./import/utilites-system/virtual.nix

      # Utilities and System Tools
      ./import/utilites-system/tools.nix

      # Development Environment
      ./import/development/shell/zsh.nix
      ./import/development/editor/editors.nix
      ./import/development/shell/tmux.nix
      ./import/development/terminal/terminal.nix
    ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
