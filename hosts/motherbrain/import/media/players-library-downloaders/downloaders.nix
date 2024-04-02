{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    media-downloader
    
    tartube-yt-dlp
    tartube
    yaydl
    youtube-dl
    youtube-tui
    tartube-yt-dlp
    yt-dlp

    # ytmdl
    # ytmdesktop
    # smtube
    # minitube
    # freetube
    # monophony
    # ytarchive
    # clipgrab
    # libsForQt5.plasmatube
    # video2midi
    # invidious
  ];
}
