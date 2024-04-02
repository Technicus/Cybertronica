{ config, pkgs, ... }: {

 # imports = [ 
 # ];
  
  services.pipewire = {
    enable = true;

    # ALSA
    alsa.enable = true;
    alsa.support32Bit = true;

    # Pulse
    pulse.enable = true;

    # JACK
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    # media-session.enable = true;

    # Session and policy manager
    # https://wiki.archlinux.org/title/WirePlumber
    wireplumber.enable = true;

  };

}

