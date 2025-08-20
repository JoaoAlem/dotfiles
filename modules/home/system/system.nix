{ config, lib, pkgs,  ... }:

{
  system.stateVersion = "24.11"; # Did you read the comment?

  # Enable Flakes
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}