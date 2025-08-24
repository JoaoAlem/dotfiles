{ config, lib, pkgs, ... }: {

  imports =[ ./applications ./games ./programming ./services ./graphical ./hardware ./system ];

  options = {
    user = lib.mkOption {
      type = lib.types.str;
      description = "Primary user of the system";
    };
    fullName = lib.mkOption {
      type = lib.types.str;
      description = "Human readable name of the user";
    };
    gitName = lib.mkOption {
      type = lib.types.str;
      description = "Username to use in git";
    };
    gitEmail = lib.mkOption {
      type = lib.types.str;
      description = "User Email to use in git";
    };
    userDirs = {
      download = lib.mkOption {
        type = lib.types.str;
        description = "XDG directory for downloads";
        default = "$HOME/Downloads";
      };
    };
    homePath = lib.mkOption {
      type = lib.types.path;
      description = "Path of user's home directory.";
      default = builtins.toPath ("/home/${config.user}");
    };
    dotfilesPath = lib.mkOption {
      type = lib.types.path;
      description = "Path of dotfiles repository.";
      default = config.homePath + "/.dotfiles";
    };
    dotfilesRepo = lib.mkOption {
      type = lib.types.str;
      description = "Link to dotfiles repository.";
    };
  };

  config = let stateVersion = "25.05";
  in {
    home-manager = {
      backupFileExtension = "bkp";

      # Use the system-level nixpkgs instead of Home Manager's
      useGlobalPkgs = true;

      # Install packages to /etc/profiles instead of ~/.nix-profile, useful when
      # using multiple profiles for one user
      useUserPackages = true;

      users.${config.user}.home.stateVersion = stateVersion;
      users.root.home.stateVersion = stateVersion;
    };
  };
}