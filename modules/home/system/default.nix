{ ... }: {

  imports = [
    ./boot.nix
    ./locale.nix
    ./network.nix
    ./system.nix
    ./user.nix
  ];
}