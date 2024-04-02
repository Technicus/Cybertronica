{ config, pkgs, ... }: 
{
  environment.systemPackages = with pkgs; 
  [
  # obs-studio
    (pkgs.wrapOBS {
      plugins = with pkgs.obs-studio-plugins; [
        wlrobs
        obs-backgroundremoval
        obs-pipewire-audio-capture

        advanced-scene-switcher
        droidcam-obs
        #obs-hyperion
        obs-livesplit-one
        obs-multi-rtmp
        #obs-ndi
        obs-teleport
        obs-tuna
        obs-vaapi
        waveform        

        input-overlay
        looking-glass-obs
        obs-3d-effect
        obs-command-source
        #obs-composite-blur
        obs-freeze-filter
        obs-gradient-source
        obs-gstreamer
        obs-move-transition
        obs-mute-filter
        obs-nvfbc
        obs-pipewire-audio-capture
        obs-replay-source
        obs-rgb-levels-filter
        obs-scale-to-sound
        obs-shaderfilter
        obs-source-clone
        obs-source-record
        obs-source-switcher
        obs-text-pthread
        obs-transition-table
        #obs-vertical-canvas
        obs-vintage-filter
        obs-vkcapture
        #obs-webkitgtk
        obs-websocket
        

      ];
    })
  ];
  imports =
  [
    #./per.nix
    #/etc/nixos/import/media/video/obs/obs-v4l2loopback.nix
    ./obs.v4l2loopback.nix
  ];
}
