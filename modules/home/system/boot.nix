{ config, lib, pkgs,  ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Configuraçao docker para permitir port 80
  boot.kernel.sysctl = {
    "net.ipv4.ip_unprivileged_port_start" = 0;
  }; 
}