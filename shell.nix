{ pkgs ? import <nixpkgs> {} }:
let
  myEnv = pkgs.poetry2nix.mkPoetryEnv {
    projectDir = ./.;
    python = pkgs.python39;
  };

in pkgs.mkShell {
  buildInputs = [ myEnv ];
}