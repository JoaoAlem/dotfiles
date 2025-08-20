{ config, lib, pkgs, ... }:

{
  # Enable Autologin
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        user = "greeter";
      };
      initial_session = {
        command = "Hyprland";
        user = config.user;
      };
    };
  };

  # uwsm
  programs.uwsm = {
    enable = true;
    waylandCompositors = {
      hyprland = {
        prettyName = "Hyprland";
        comment = "Hyprland compositor managed by UWSM";
        binPath = "/run/current-system/sw/bin/Hyprland";
      };
    };
  };

  # Display Manager - GDM
  # services.xserver.displayManager = {
  #   gdm = {
  #     enable = true;
  #     wayland = true;
  #   };
  # };
  # services.displayManager.sessionPackages = [ pkgs.hyprland ];
  # services.libinput.enable = true;
  
  # Desktop Portals
  # xdg.portal = {
  #   enable = true;
  #   wlr = {
  #     enable = true;
  #   };
  #   extraPortals = with pkgs; [
  #     xdg-desktop-portal-gtk
  #   ];
  #   configPackages = with pkgs; [
  #     xdg-desktop-portal-hyprland
  #   ];
  # };
}
