{ config, pkgs, ... }: {

  imports = [ 
    
    ./subsystem/bluetooth-audio.config.nix
    # ./subsystem/pipewire.config.nix
    ./subsystem/pulse.config.nix
    # ./subsystem/alsa.config.nix
    # ./subsystem/osa.config.nix
    # ./subsystem/jack.config.nix
    # ./subsystem/realtime.config.nix
    
    # ./modules/daw.module.nix
    # ./modules/synth.module.nix

  ];
  
  # Enable sound.
  sound.enable = true;

  # security.rtkit.enable = true;
  
  # hardware.pulseaudio.enable = false;
  # Enabling pulseaudio with extra codecs
  # hardware.pulseaudio = {
  #   enable = false;
  #   package = pkgs.pulseaudioFull;
  # };

  # environment.systemPackages = [
  #   pkgs.jack2
  # ];

  # services.pipewire = {
  #   enable = true;
  #   alsa.enable = true;
  #   alsa.support32Bit = true;
  #  pulse.enable = true;
  #  # If applcations require JACK
  #  jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;

  #  wireplumber.enable = true;
  # };


  

  # hardware.pulseaudio.configFile = pkgs.writeText "default.pa" ''
  #   load-module module-bluetooth-policy
  #   load-module module-bluetooth-discover
    ## module fails to load with 
    ##   module-bluez5-device.c: Failed to get device path from module arguments
    ##   module.c: Failed to load module "module-bluez5-device" (argument: ""): initialization failed.
    # load-module module-bluez5-device
    # load-module module-bluez5-discover
  # '';
  
  # Automatically switch audio to the connected bluetooth device when it connects
  # hardware.pulseaudio.extraConfig = "
  #   load-module module-switch-on-connect
  # ";

  # Bluetooth audio settings
  # https://nixos.wiki/wiki/Bluetooth 
  # hardware.bluetooth.settings = {
  #   General = {
      # Enabling A2DP Sink
      # Modern headsets will generally try to connect using the A2DP profile.      
  #     Enable = "Source,Sink,Media,Socket";
      # Showing battery charge of bluetooth devices
  #     Experimental = true;
  #   };
  # };
  
  # Restart service: `systemctl restart bluetooth`
  # Bluetooth fails to power on with Failed to set power on: org.bluez.Error.Blocked
  # If journalctl -eu bluetooth shows Failed to set mode: Blocked through rfkill (0x12), rfkill might be blocking it:

  # $ rfkill
  # ID TYPE      DEVICE      SOFT      HARD
  #  1 wlan      phy0   unblocked unblocked
  # 37 bluetooth hci0   blocked unblocked
  
  # Unblock it first:
  # `sudo rfkill unblock bluetooth`

  # Cannot use bluetooth while it previously worked
  # Symptoms:
  # 
  #  When using `bluetoothctl`, getting "No agent is registered".
  #  When using `blueman` or anything using dbus to talk to bluez, getting dbus.exceptions.DBusException: org.freedesktop.DBus.Error.AccessDenied: Rejected send message"
  #  possibly can be fixed by restarting the display-manager session. The session management may have had an issue with registering your current session and doesn't allow you to control bluetooth.
  # 
  # $ sudo systemctl restart display-manager.service

  # No Audio when using headset in HSP/HFP mode
  # If the output of `dmesg | grep Bluetooth` shows a line similar to Bluetooth: hci0: BCM: Patch brcm/BCM-0a5c-6410.hcd not found then your machine uses a Broadcom chipset without the required firmware installed.
  # 
  # To Fix this, add `hardware.enableAllFirmware = true;` to your /etc/nixos/configuration.nix then reboot.  
}

