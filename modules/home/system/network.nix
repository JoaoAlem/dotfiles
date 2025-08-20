{ config, lib, pkgs,  ... }:

{
 # Enable networking
  networking.networkmanager.enable = true;

  # Certificates
  security.pki.certificateFiles = [
    "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt"
  ];
}