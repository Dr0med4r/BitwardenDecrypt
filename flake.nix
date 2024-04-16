{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    nixpkgs,
    flake-utils,
    self,
    ...
  }:
    flake-utils.lib.eachDefaultSystem
    (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };
        bwDecrypt = pkgs.callPackage ./decrypt.nix {};
      in {
        packages.BitwardenDecrypt = bwDecrypt;
        packages.default = self.packages.${system}.BitwardenDecrypt;
      }
    );
}
