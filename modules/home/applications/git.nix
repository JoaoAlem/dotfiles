{ config, lib, pkgs,  ... }:

{
  # Git
  programs.git = {
   enable = true;
   package = pkgs.gitFull.override { withLibsecret = true; };
   config = {
     user.email = "JoaoAlem";
     user.name = "joao.aalem@gmail.com";
     core.fileMode = "false";
   };
  };
}