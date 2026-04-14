{ mkDerivation, base, bytestring, Cabal, Cabal-syntax, lib
, QuickCheck
}:
mkDerivation {
  pname = "Cabal-QuickCheck";
  version = "3.14.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring Cabal Cabal-syntax QuickCheck
  ];
  description = "QuickCheck instances for types in Cabal";
  license = "unknown";
}
