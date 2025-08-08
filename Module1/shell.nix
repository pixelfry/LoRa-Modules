{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages {
    arduino-ide
    (pkgs.python3.withPackages(p: with p; [
      pyserial
    ]))
  ];

}
