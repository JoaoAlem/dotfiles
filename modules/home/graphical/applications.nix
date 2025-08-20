{ config, lib, pkgs, ... }:

{
  # Programs to make Hyprland Work
  environment.systemPackages = with pkgs; [
    # Funcionamento da interface
    wofi # lancador de aplicacoes
    # kitty # janela do terminal
    xdg-desktop-portal-gtk # portal para o wayland - GTK
    xdg-desktop-portal-hyprland # portal para o wayland - hyprland
    eww # Wacky Widgets - barra no topo da tela
    socat # Sockets
    jq # parse the JSONs
    brightnessctl # Gerencia o brilho da tela
    pulseaudioFull # PulseAudio
    pamixer # Gerencia o volume
    playerctl # Gerencia as musicas
    pavucontrol # Controlador grafico de volume
    networkmanagerapplet # tray icon para o wifi
    
    # Clipboard
    wl-clipboard
    copyq
    clinfo
    
    # Polkit Agent
    hyprpolkitagent # polkit agent for hyprland
    hyprshot # Hyprland screenshot utility
    
    # Customizacoes
    zsh-powerlevel10k # Tema do ZSH
    nwg-look # Customizador do GTK
    waypaper # Interface grafica para trocar o plano de fundo
    swww # Responsavel pelo plano de fundo
  ];
}