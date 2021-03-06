{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haddock-api"; version = "2.17.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "Simon Hengel <sol@typeful.net>, Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "A documentation-generation tool for Haskell libraries";
      description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.xhtml)
          (hsPkgs.Cabal)
          (hsPkgs.ghc-boot)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.haddock-library)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghc)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }