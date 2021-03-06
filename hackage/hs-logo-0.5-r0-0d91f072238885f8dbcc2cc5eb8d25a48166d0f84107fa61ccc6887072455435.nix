{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hs-logo"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "http://deepakjois.github.com/hs-logo";
      url = "";
      synopsis = "Logo interpreter written in Haskell";
      description = "Interpreter for the Logo programming language,\nspecialised for turtle graphics.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hs-logo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.cmdargs)
            (hsPkgs.random)
            (hsPkgs.parsec-numbers)
            (hsPkgs.colour)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            ];
          };
        };
      tests = {
        "turtle-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.cmdargs)
            (hsPkgs.random)
            (hsPkgs.parsec-numbers)
            (hsPkgs.colour)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            ];
          };
        };
      };
    }