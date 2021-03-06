{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "leancheck"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/leancheck#readme";
      url = "";
      synopsis = "Enumerative property-based testing";
      description = "LeanCheck is a simple enumerative property-based testing library.\n\nProperties are defined as Haskell functions returning a boolean value which\nshould be true for all possible choices of argument values.    LeanCheck\napplies enumerated argument values to these properties in search for a\ncounterexample.  Properties can be viewed as parameterized unit tests.\n\nLeanCheck works by producing tiers of test values: a possibly infinite list\nof finite sublists of same-and-increasingly-sized values.\n\nLeanCheck has lean core with only 180 lines of Haskell code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
        };
      tests = {
        "main" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "types" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "tiers" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "operators" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "derive" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "error" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "generic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
          };
        "io" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "fun" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "funshow" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        "stats" = { depends = [ (hsPkgs.base) (hsPkgs.leancheck) ]; };
        };
      };
    }