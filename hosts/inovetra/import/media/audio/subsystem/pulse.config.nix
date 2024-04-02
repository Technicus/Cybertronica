{ config, pkgs, ... }: {

  # imports =
  #   [ 
  # ];
  
  # Enabling pulseaudio with extra codecs
  hardware.pulseaudio = {
    enable = false;
    package = pkgs.pulseaudioFull;
  };

}

