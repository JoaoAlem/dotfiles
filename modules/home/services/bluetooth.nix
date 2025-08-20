{ config, lib, pkgs,  ... }:

{
  # Service for bluetooth
  services.blueman.enable = true;
}