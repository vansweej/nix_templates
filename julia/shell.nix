{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-21.05.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.julia-bin
  ];

  shellHook = ''
    julia -e 'using Pkg; Pkg.add("OhMyREPL")'; Pkg.add("Revise"); Pkg.add("PkgTemplates")
  '';

}
