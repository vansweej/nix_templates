{pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-21.05.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.cabal-install
    pkgs.stack
    pkgs.ghc
    pkgs.haskell-language-server
    pkgs.stack2nix
  ];

  shellHook = ''
  '';

}
