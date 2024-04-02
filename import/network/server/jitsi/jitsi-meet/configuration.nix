{ modulesPath, ... }:

{
  networking.hostName = "samus";

  imports = [
    # You can change this to match your target system
    # (or remove it entirely if it doesn’t need special configuration).
    # An introduction to NixOS profiles can be found in the manual: https://nixos.org/manual/nixos/stable/#ch-profiles
    (modulesPath + "/profiles/qemu-guest.nix")
  ];

  networking = {
    # replace those details with your network interface, the IPv6 gateway, address and prefix length
    # IPv4 will automatically get configured over DHCP (if your provider supports it)
    defaultGateway6 = { address = "fe80::1"; interface = "enp1s0"; };
    interfaces.ens3.ipv6.addresses = [ { address = "2a01:db8:abcd:1234::"; prefixLength = 64; } ];
  };

  services.openssh.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [
    # don’t forget to add your SSH public key(s) here!
    "ssh-ed25519 AAAA…"
  ];

  # if your disk device is called differently, you need to change this
  boot.loader.grub.device = "/dev/nvme0n1p1";
  fileSystems."/" = {
    device = "/dev/nvme0n1p2";
    fsType = "ext4";
  };

  system.stateVersion = "23.11"; # change this to the NixOS version you first installed the system with
}
