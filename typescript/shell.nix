{pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {} }:

with pkgs;

mkShell {
    buildInputs = with pkgs;

    [
      (with nodePackages;
      [
        node2nix
        nodejs-16_x
        bash-language-server
        dockerfile-language-server-nodejs
        eslint
        typescript
        typescript-language-server
        vscode-css-languageserver-bin
        vscode-html-languageserver-bin
        bashInteractive
      ])
    ];

  shellHook = ''
  '';

}
