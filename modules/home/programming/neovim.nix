{ config, pkgs, ... }:

{
  home-manager.users.${config.user} = {
    programs.neovim = {
      enable = true;
      extraConfig = ''
        set number relativenumber
      '';
    };
  };
}