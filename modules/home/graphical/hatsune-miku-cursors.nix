{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "hatsune-miku-windows-linux-cursors";
  version = "1.0";

  src = pkgs.fetchFromGitHub {
    owner = "supermariofps";
    repo = "hatsune-miku-windows-linux-cursors";
    rev = "master";
    sha256 = "sha256-HCHo4GwWLvjjnKWNiHb156Z+NQqliqLX1T1qNxMEMfE="; # substitua pelo hash correto
  };

  installPhase = ''
    mkdir -p $out/share/icons/HatsuneMiku
    cp -r $src/* $out/share/icons/HatsuneMiku
  '';
}