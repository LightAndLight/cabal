{ mkDerivation, array, base, base-compat, base-orphans, bytestring
, Cabal, Cabal-described, Cabal-QuickCheck, Cabal-syntax
, Cabal-tree-diff, clock, containers, deepseq, Diff, directory
, exceptions, filepath, lib, nothunks, optparse-applicative, pretty
, process, QuickCheck, tar, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, temporary, text, time, tree-diff
}:
mkDerivation {
  pname = "Cabal-tests";
  version = "3";
  src = ./.;
  libraryHaskellDepends = [
    base Cabal directory exceptions filepath
  ];
  testHaskellDepends = [
    array base base-compat base-orphans bytestring Cabal
    Cabal-described Cabal-QuickCheck Cabal-syntax Cabal-tree-diff clock
    containers deepseq Diff directory filepath nothunks
    optparse-applicative pretty process QuickCheck tar tasty
    tasty-golden tasty-hunit tasty-quickcheck temporary text time
    tree-diff
  ];
  homepage = "http://www.haskell.org/cabal/";
  description = "Tests for Cabal library";
  license = lib.licenses.bsd3;
}
