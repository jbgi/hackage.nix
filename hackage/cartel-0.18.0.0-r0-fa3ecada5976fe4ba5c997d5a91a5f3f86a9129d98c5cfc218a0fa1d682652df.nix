{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { visual = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cartel"; version = "0.18.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014-2016 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/cartel";
      url = "";
      synopsis = "Specify Cabal files in Haskell";
      description = "By specifying your Cabal files in Haskell, you have the power\nof Haskell at your disposal to reduce redundancy.  You can\nalso read in trees of module names dynamically, which saves\nyou from manually maintaining lists of module names.\n\nSee the documentation in the \"Cartel\" module for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.split)
          ];
        };
      exes = {
        "cartel-visual-test" = {
          depends = (pkgs.lib).optionals (flags.visual) [
            (hsPkgs.multiarg)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.split)
            ];
          };
        "cartel-init" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.split)
            ];
          };
        };
      tests = {
        "cartel-properties" = {
          depends = [
            (hsPkgs.multiarg)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.split)
            ];
          };
        };
      };
    }