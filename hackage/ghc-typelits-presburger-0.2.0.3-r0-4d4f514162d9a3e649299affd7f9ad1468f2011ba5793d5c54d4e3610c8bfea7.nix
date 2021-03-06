{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-typelits-presburger"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/ghc-typelits-presburger#readme";
      url = "";
      synopsis = "Presburger Arithmetic Solver for GHC Type-level natural numbers.";
      description = "@ghc-typelits-presburger@ augments GHC type-system with Presburger Arithmetic Solver for Type-level natural numbers.\nYou can use by adding this package to @build-depends@ and add the following pragma to the head of .hs files:\n\n> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-tcplugins-extra)
          (hsPkgs.equational-reasoning)
          (hsPkgs.singletons)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.reflection)
          ];
        };
      exes = {
        "simple-arith" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-typelits-presburger)
            (hsPkgs.equational-reasoning)
            (hsPkgs.singletons)
            ];
          };
        };
      };
    }