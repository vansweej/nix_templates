{pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.cabal-install
    pkgs.stack
    pkgs.ghc
    pkgs.ormolu
    pkgs.haskell-language-server
  ];

  shellHook = ''
  '';

}
