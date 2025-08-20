{ inputs, globals, ... }:

with inputs;

{
  system = "x86_64-linux";
  specialArgs = { };

  modules = [
    ../../modules/common
    home-manager.nixosModules.home-manager
    {
      networking.hostName = "work";
      
      # Set registry to flake packages, used for nix X commands
      nix.registry.nixpkgs.flake = nixpkgs;
    }
  ];
}