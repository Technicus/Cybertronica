{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    virtualbox
    qemu
    # qemu_xen
    qemu_test
    qemu_full
    qemu-utils
    # canokey-qemu
    # uefi-run
    # OVMFFull
  ];
}
