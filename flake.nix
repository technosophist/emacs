{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };
  outputs =
    { nixpkgs, ... }:
    {
      packages.x86_64-linux =
        let
          pkgs = import nixpkgs {
            system = "x86_64-linux";
          };
          src-dir = pkgs.runCommandLocal "init-dir" { } ''
            mkdir -p $out
            cp ${./src/ttfl.el} $out/ttfl.el
          '';
          emacsWithPackages = (pkgs.emacsPackagesFor pkgs.emacs30-gtk3).emacsWithPackages;
        in
        rec {
          default = ttfl-emacs;
          ttfl-emacs = pkgs.writeScriptBin "emacs" (
            builtins.readFile (
              pkgs.replaceVars ./emacs.bash {
                bash = "${pkgs.bash}/bin/bash";
                emacs = "${emacsWithPackages (epkgs: epkgs.magit)}/bin/emacs";
                inherit src-dir;
              }
            )
          );
        };
    };
}
