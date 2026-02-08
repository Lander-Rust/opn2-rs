{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell rec {
  nativeBuildInputs = [
    pkg-config
  ];
  buildInputs = [
    alsa-lib-with-plugins
  ];
  LD_LIBRARY_PATH = lib.makeLibraryPath buildInputs;
}
