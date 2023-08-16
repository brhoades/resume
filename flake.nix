{
  description = "2023 interviewing golang flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
      tex = (pkgs.texlive.combine {
        inherit (pkgs.texlive) scheme-medium fontawesome5 silence;
      }); 
      in
        {
          devShell = with pkgs; mkShell {
            buildInputs = [
              tex
              font-awesome_5
              awscli
            ];
          };
        });
}
