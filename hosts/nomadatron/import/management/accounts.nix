{ config, pkgs, ... }: {
# Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.technicus = {
    isNormalUser = true;
    description = "Technicus";
    extraGroups = [ "networkmanager" "wheel" ];
     # packages = with pkgs; [
     # ];
  };

  users.extraUsers.technicus.extraGroups = [ "jackaudio" ];

}
