Generate Nix derivations for the given Cabal files.

Normally I'd run `cabal2nix` for every detectable Cabal file, but this repository has so many.
`overrides.txt` lists the Cabal files that should have a corresponding Nix derivation,
and `genOverrides` creates the derivations.
