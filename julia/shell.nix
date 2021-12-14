{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/3590f02e7d5760e52072c1a729ee2250b5560746.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.julia-bin
  ];

  shellHook = ''
    julia -e 'using Pkg; Pkg.add("OhMyREPL")'; Pkg.add("Revise"); Pkg.add("PkgTemplates")
  '';

}
