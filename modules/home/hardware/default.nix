{ inputs, globals, ... }:
{
  imports = [
    ./hardware.nix ./amdgpu.nix
  ];
}