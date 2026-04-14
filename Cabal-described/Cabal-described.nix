{ mkDerivation, base, Cabal, Cabal-syntax, containers, lib, pretty
, QuickCheck, rere, tasty, tasty-quickcheck
}:
mkDerivation {
  pname = "Cabal-described";
  version = "3.16.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base Cabal Cabal-syntax containers pretty QuickCheck rere tasty
    tasty-quickcheck
  ];
  description = "Described functionality for types in Cabal";
  license = "unknown";
}
