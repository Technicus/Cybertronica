{ config, pkgs, ... }: {

  # https://nixos.wiki/wiki/JACK
  # The Jack Audio Connection Kit is used by most of the serious audio 
  # applications on Linux. It provides real-time, low latency connections 
  # for both audio and MIDI data between applications that implement its 
  # API. NixOS uses the dbus version of JACK2 (jackdbus). This can be used 
  # together with pulseaudio with a little configuration. The result is that 
  # you don't have to manually hunt down applications which are using the 
  # sound device and kill them before starting JACK. You can also continue
  #  to use non-JACK aware applications (e.g. flash) at the same time as 
  # using JACK applications (e.g. Ardour).

  # Load the sequencer and midi kernel modules
  boot.kernelModules = [ "snd-seq" "snd-rawmidi" ];

  # Enable JACK support
  hardware.pulseaudio.package = pkgs.pulseaudio.override { 
    jackaudioSupport = true; };

  # Troubleshooting JACK and PulseAudio
  # $ pactl load-module module-jack-sink channels=2
  # Failure: Module initalization failed
  # Check if you have previous settings in ~/.config/jack/conf.xml. Try 
  # renaming this file and running the pactl command again.

  # You might need this setting so JACK_PROMISCUOUS_SERVER is defined when 
  # pulseaudio is started.
  systemd.user.services.pulseaudio.environment = {
    JACK_PROMISCUOUS_SERVER = "jackaudio";
  };
  
  # Ensure that the JACK enabled pulseaudio is being used
  # ~/.config/pulse/client.conf
  # daemon-binary=/var/run/current-system/sw/bin/pulseaudio

  
  # imports = [ &lt;musnix&gt; ];
  environment.systemPackages = with pkgs; [ libjack2 jack2 qjackctl ];
  environment.systemPackages = with pkgs; [ pavucontrol libjack2 jack2 qjackctl jack2Full jack_capture ];
  security.sudo.extraConfig = ''
    moritz  ALL=(ALL) NOPASSWD: ${pkgs.systemd}/bin/systemctl
    '';
  musnix = {
    enable = true;
    alsaSeq.enable = false;

    # Find this value with `lspci | grep -i audio` (per the musnix readme).
    # PITFALL: This is the id of the built-in soundcard.
    #   When I start using the external one, change it.
    soundcardPciId = "00:1f.3";

    # magic to me
    rtirq = {
      # highList = "snd_hrtimer";
      resetAll = 1;
      prioLow = 0;
      enable = true;
      nameList = "rtc0 snd";
    };
  };

  # After a reboot, you can enable JACKD using "pasuspender qjackctl" and start jackd by pressing the start button.
  # You can test, if your JACK works, using the command jack_simple_client, which produces a sound if JACK is running.

 # services.jack = {
 #  jackd.enable = true;
    # support ALSA only programs via ALSA JACK PCM plugin
    # alsa.enable = false;
    # support ALSA only programs via loopback device (supports programs like Steam)
    # loopback = {
      # enable = true;
      # buffering parameters for dmix device to work with ALSA only semi-professional sound programs
      #dmixConfig = ''
      #  period_size 2048
      #'';
    # };
  # };

}
