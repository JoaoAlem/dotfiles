{ config, lib, pkgs,  ... }:

{
  # Policy management
  security.polkit.enable = true;
  
  # Service for hyprland agent
  systemd.user.services.hyprpolkitagent = {
    enable = true;
    wantedBy = [ "default.target" ];
    after = [ "graphical-session.target" ];
    description = "Hyprland polkit agent";
    startLimitBurst = 3;
    startLimitIntervalSec = 200; # Must be greater than startLimitBurst * restartSec
    serviceConfig = {
      Restart = lib.mkForce "always";
      RestartSec = 10;
      Type = "simple";
      ExecStart = ''${pkgs.hyprpolkitagent}/libexec/hyprpolkitagent'';
    };
  };
}