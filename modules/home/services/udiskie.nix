{ config, lib, pkgs,  ... }:

{
  # Mount Disks automatically
  services.udisks2.enable = true;
}