{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    # toybox
    pciutils
    # cope
    # busybox
    tree
    lf
    killall
    htop
    #tee
    lm_sensors
    psensor
    xsensors
    eza
    lshw
    hwinfo
    inxi
    
  ];
}
