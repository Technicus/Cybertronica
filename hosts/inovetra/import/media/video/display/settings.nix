{ config, pkgs, ... }: {
  # display configuration
  environment.systemPackages = with pkgs; [
    arandr
  ];
}
