{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lib-werror = false; dump-core = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "extensible-effects"; version = "5.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "suhailshergill@gmail.com";
      author = "Oleg Kiselyov, Amr Sabry, Cameron Swords, Ben Foppa";
      homepage = "https://github.com/suhailshergill/extensible-effects";
      url = "";
      synopsis = "An Alternative to Monad Transformers";
      description = "This package introduces datatypes for typeclass-constrained effects,\nas an alternative to monad-transformer based (datatype-constrained)\napproach of multi-layered effects.\nAny help is appreciated!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs.dump-core);
        };
      tests = {
        "extensible-effects-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.silently)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.doctest)
            (hsPkgs.extensible-effects)
            ];
          };
        };
      benchmarks = {
        "extensible-effects-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.extensible-effects)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      };
    }