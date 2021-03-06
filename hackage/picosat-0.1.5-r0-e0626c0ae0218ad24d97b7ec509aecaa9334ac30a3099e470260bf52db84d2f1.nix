{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "picosat"; version = "0.1.5"; };
      license = "MIT";
      copyright = "2014-2019 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/haskell-picosat";
      url = "";
      synopsis = "Bindings to the PicoSAT solver";
      description = "`picosat` provides bindings for the fast PicoSAT solver library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.transformers) (hsPkgs.containers) ];
        };
      tests = {
        "Sudoku" = { depends = [ (hsPkgs.base) (hsPkgs.picosat) ]; };
        "Scoped" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.picosat)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            ];
          };
        "rand-shared-improvement" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.picosat)
            (hsPkgs.transformers)
            (hsPkgs.random)
            (hsPkgs.rdtsc)
            ];
          };
        };
      };
    }