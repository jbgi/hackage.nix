{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HUnit-approx"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "https://github.com/goldfirere/HUnit-approx";
      url = "";
      synopsis = "Approximate equality for floating point numbers with HUnit";
      description = "This package exports combinators useful in comparing floating-point numbers\nin HUnit tests, by using approximate equality.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.HUnit) ]; };
      tests = {
        "sanity-check" = {
          depends = [ (hsPkgs.base) (hsPkgs.HUnit) (hsPkgs.HUnit-approx) ];
          };
        };
      };
    }