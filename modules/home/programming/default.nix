{ config, pkgs, ... }:

{
  imports = [
    ./neovim.nix
  ];

  home-manager.users.${config.user} = {
    home.packages = with pkgs; [ 
      # Para o Trabalho
      jetbrains.phpstorm
      jetbrains.clion
      jetbrains.datagrip
      filezilla
      thunderbird
      vscode
      vesktop
      gcc
      gdb
      postman
      clickup
      git-credential-manager
      mysql84
      lsof
      anydesk
      burpsuite

      # Dependencias do desenvolvimento
      php
      php82Packages.composer
      nodePackages_latest.nodejs

      # Caffeine
      caffeine-ng
    ];
  };
}
