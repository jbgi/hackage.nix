{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "group-with"; version = "0.2.0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ukoehler@techoverflow.net";
      author = "Uli Köhler";
      homepage = "https://github.com/ulikoehler/group-with";
      url = "";
      synopsis = "Classify objects by key-generating function,\nlike SQL GROUP BY";
      description = "A library to classify objects into multimaps by using a\nfunction generating keys for any object in the list.\nThis allows an approach similar to SQL GROUP BY.\nProvides a more flexible approach to `GHC.Exts.groupWith`.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "test-groupby" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }