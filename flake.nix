{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    {
      overlays.default = final: prev: {
        haskellPackages = prev.haskellPackages.extend (hfinal: hprev: {
          # https://github.com/haskell/attoparsec/issues/232
          attoparsec = prev.haskell.lib.dontCheck hprev.attoparsec;
          Cabal = hprev.callPackage ./Cabal/Cabal.nix {};
          Cabal-QuickCheck= hprev.callPackage ./Cabal-QuickCheck/Cabal-QuickCheck.nix {};
          Cabal-described = hprev.callPackage ./Cabal-described/Cabal-described.nix {};
          Cabal-syntax = hprev.callPackage ./Cabal-syntax/Cabal-syntax.nix {};
          Cabal-tests = hprev.callPackage ./Cabal-tests/Cabal-tests.nix {};
          Cabal-tree-diff = hprev.callPackage ./Cabal-tree-diff/Cabal-tree-diff.nix {};
          cabal-install = prev.haskell.lib.dontCheck (hprev.callPackage ./cabal-install/cabal-install.nix {});
          cabal-install-solver = hprev.callPackage ./cabal-install-solver/cabal-install-solver.nix {};
          open-browser = hprev.callHackage "open-browser" "0.2.1.1" {};
        });
      };
    } // flake-utils.lib.eachDefaultSystem (system:
    let pkgs = import nixpkgs { inherit system; }; in
    {
      devShells.default = pkgs.mkShell {
        buildInputs = [ pkgs.cabal2nix ];
      };
    });
}
