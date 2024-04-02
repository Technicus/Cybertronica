{ config, pkgs, ... }: {
     
  # Enables wireless support via wpa_supplicant.
  # networking.wireless.enable = true;  

  # Wireless access point
  # https://nixos.wiki/wiki/Internet_Connection_Sharing
  services.create_ap = {
  enable = true;
  settings = {
    INTERNET_IFACE = "enp1s0";
    WIFI_IFACE = "wlan0";
    SSID = "Samus";
    PASSPHRASE = "Metroidacon";
    };
  };

}
