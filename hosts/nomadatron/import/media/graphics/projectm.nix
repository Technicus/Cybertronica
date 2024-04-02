{ config, pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    projectm
  ];

}
