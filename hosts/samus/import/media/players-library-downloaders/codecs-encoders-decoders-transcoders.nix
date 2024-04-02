{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    ffmpeg_5-full
    # video2midi
  ];
}
