{ config, pkgs, ... }: {
     
  imports =
    [ 
      ./manager.nix
      # ./wireless.nix
      ./proxy.nix
      ./firewall.nix
      ./ssh.nix

    ];
}
