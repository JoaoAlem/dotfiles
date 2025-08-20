{ config, lib, pkgs,  ... }:

{
   # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.${config.user} = {
    isNormalUser = true;
    description = "João Alem";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

  home-manager.users.${config.user}.xdg = {
    # Allow Nix to manage the default applications list
    mimeApps.enable = true;

    # Set directories for application defaults
    userDirs = {
      enable = true;
      createDirectories = true;
      documents = "$HOME/Documents";
      download = config.userDirs.download;
      music = "$HOME/media/music";
      pictures = "$HOME/media/images";
      videos = "$HOME/media/videos";
    };
  };
}