{pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-21.11.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.julia-bin
  ];

  shellHook = ''
    if [ ! -f "$HOME/.julia/config/startup.jl" ]; then
      julia -e 'using Pkg; Pkg.add("OhMyREPL"); Pkg.add("Revise"); Pkg.add("PkgTemplates"); Pkg.add("LanguageServer")'
      mkdir -p ~/.julia/config/ && echo -e "using OhMyREPL\nusing Revise\n" >> ~/.julia/config/startup.jl
    fi
  '';

}
