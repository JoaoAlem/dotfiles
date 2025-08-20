{ config, lib, pkgs, ... }:

{
  # Fonts para o Hyprland e interfaces
  fonts.packages = with pkgs; [
    meslo-lgs-nf # Fonte para o ZSH
    corefonts # MS TTF fonts for the web
    vistafonts # MS TTF fonts from windows vista
    nerd-fonts.hack # Nerd Fonts - Hack
    font-awesome # Fonts Awesome 6
    hack-font # Hack font - Normal
  ];
}