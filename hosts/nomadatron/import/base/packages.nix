{ config, pkgs, ... }: {

# List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # www-browser
    links2
    elinks
    #links
    lynx
    w3m
  ];
}
