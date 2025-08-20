{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [ 
    pkgs.prism-launcher.packages.${pkgs.system}.prismlauncher
  ];
}
