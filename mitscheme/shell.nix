{pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.mitscheme
  ];

  shellHook = ''
  '';

}
