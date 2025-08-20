{ config, lib, pkgs,  ... }:

{
  # Keyrings
  programs.seahorse.enable = true;
  services.gnome.gnome-keyring.enable = true;
}