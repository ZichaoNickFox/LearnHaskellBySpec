{ pkgs ? import <nixpkgs> {} }:
let
  ghc = pkgs.haskell.packages.ghc884.ghcWithPackages (p: [
    p.hspec
    p.megaparsec
    p.text
    p.typerep-map
    p.http-types
    p.wai
    p.vault
    p.split
  ]);
in
pkgs.mkShell {
  buildInputs = [ ghc ];
}