{ config, lib, pkgs,  ... }:

{
  # Docker
  virtualisation.docker.enable = true;
  virtualisation.docker.enableOnBoot = true;

  # Serviço do docker para o usuario
  systemd.user.services.docker = {
    enable = true;
    wantedBy = [ "default.target" ];
  };
}