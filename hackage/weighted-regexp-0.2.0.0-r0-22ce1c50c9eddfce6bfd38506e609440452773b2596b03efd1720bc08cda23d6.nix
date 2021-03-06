{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { quickcheck = false; criterion = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "weighted-regexp"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastian Fischer";
      author = "Thomas Wilke, Frank Huch, Sebastian Fischer";
      homepage = "http://sebfisch.github.com/haskell-regexp";
      url = "";
      synopsis = "Weighted Regular Expression Matcher";
      description = "Haskell implementation of a weighted regular expression\nmatcher with linear worst-case time and space bounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.array) ];
        build-tools = [ ((hsPkgs.buildPackages).happy) ];
        };
      exes = {
        "quickcheck-re" = { depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ]; };
        "criterion-re" = { depends = [ (hsPkgs.base) (hsPkgs.criterion) ]; };
        };
      };
    }