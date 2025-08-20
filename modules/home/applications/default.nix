{ config, lib, pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./git.nix
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Sistema
    vim
    wget
    nss # Erro libnss3.so
    dbus
    cacert # ca-certificates in ubuntu
    unzip
    
    # Aplicacoes padrao
    google-chrome # Navegador web
    spotify # Músicas
    gimp # Editor de imagens
    btop-rocm # Monitor do sistema
    meld # Visualizador de diferenças entre arquivos - diff
    nautilus # Gerenciador de arquivos
    mpv # Visualizador de videos
    qimgv # Visualizador de imagens
    gnome-text-editor # Editor de texto
    gnome-calculator # calculadora
    onlyoffice-desktopeditors # Office

    # Customizacoes
    neofetch

    # Games
    jdk17 # Java 17 para minecraft 
    gamemode # Feral gamemode 
    
    # Extra
    nss
    glxinfo # Inforamcoes do openGL
    vulkan-loader # vulkan
    ncdu # Visualizador de espaço do sistema
    gparted # Ferramenta visual de particionamento
    udiskie # Mount drives automatically
  ];
}