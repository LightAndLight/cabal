{ mkDerivation, base, Cabal, Cabal-syntax, lib, tree-diff }:
mkDerivation {
  pname = "Cabal-tree-diff";
  version = "3.16.0.0";
  src = ./.;
  libraryHaskellDepends = [ base Cabal Cabal-syntax tree-diff ];
  description = "QuickCheck instances for types in Cabal";
  license = "unknown";
}
