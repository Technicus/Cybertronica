if sudo nixos-rebuild switch
then
  rsync -q -av -R /etc/nixos/ /home/utility/nixos-config/`date +"%Y-%m-%d-%H-%M"`
fi
