{ inputs, globals, ... }:

with inputs;

nixpkgs.lib.nixosSystem {
  system = "x86_64-linux";
  specialArgs = { inherit inputs globals; };

  modules = [
    globals
    ../../modules/common
    ../../modules/home
    home-manager.nixosModules.home-manager
    {
      networking.hostName = "home";
      
      # Set registry to flake packages, used for nix X commands
      nix.registry.nixpkgs.flake = nixpkgs;
    }
  ];
  
}