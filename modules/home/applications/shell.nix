{ config, lib, pkgs, ... }:

{
  home-manager.users.${config.user} = {
    home.file.".p10k.zsh".source = ../../../config/home/p10k.zsh;
    
    programs.kitty = {
      enable = true;
      enableGitIntegration = true;
      shellIntegration.enableZshIntegration = true;
      font = {
        package = pkgs.nerd-fonts.meslo-lg;
        name = "MesloLGS NF";
      };
      settings = {
        background_opacity = "0.6";
        shell = "${pkgs.zsh}/bin/zsh";
      };
    };

    # ZSH - mover para dentro do home-manager
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      history = {
        size = 10000;
      };
      initContent = ''
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

        # Load Powerlevel10k theme
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      '';

      shellAliases = {
        ll = "ls -l";
        update = "sudo nixos-rebuild switch";
        list-generations = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
        clear-nix = "sudo nix-collect-garbage -d";
        clear-cache = "sudo su -c 'echo 3 > /proc/sys/vm/drop_caches' -s /bin/sh root";
      };

      oh-my-zsh = {
        enable = true;
        plugins = [ "git" ];
        theme = "robbyrussell";
      };
    };
  };
}