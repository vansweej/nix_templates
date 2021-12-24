{pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.node2nix
    pkgs.nodejs-16_x
    pkgs.bash-language-server
    pkgs.dockerfile-language-server-nodejs
    pkgs.eslint
    pkgs.typescript
    pkgs.typescript-language-server
    pkgs.vscode-css-languageserver-bin
    pkgs.vscode-html-languageserver-bin
    pkgs.bashInteractive
  ];

  shellHook = ''
  '';

}
