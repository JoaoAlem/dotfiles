{
  description = "Flake de gerenciamento de sistema";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    prism-launcher.url = "github:PrismLauncher/PrismLauncher/develop";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    yazi.url = "github:sxyazi/yazi";
  };

  outputs = { nixpkgs, home-manager, ... } @inputs:
    let
      globals = rec {
        user = "joao";
        fullName = "João Alem";
        gitName = "JoaoAlem";
        gitEmail = "joao.aalem@gmail.com";
      };
    in rec {
      nixosConfigurations = {
        "home" = import ./hosts/home { inherit inputs globals; };
        "work" = import ./hosts/work { inherit inputs globals; };
      };

      nix.settings.substituters = [
        "https://cache.nixos.org/"
        "https://nix-community.cachix.org"
      ];
      nix.settings.trusted-public-keys = [
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        "nix-community.cachix.org-1:7dJkh0aDOiZ4a8o+jDUu9gFQsaTI2CIjF0jTpaC+BZk="
      ];
    };
}

