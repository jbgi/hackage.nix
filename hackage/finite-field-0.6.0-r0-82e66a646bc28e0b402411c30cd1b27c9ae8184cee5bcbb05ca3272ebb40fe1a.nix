{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "finite-field"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Finite Fields";
      description = "This is an implementation of finite fields.\nCurrently only prime fields are supported.\n\nChanges in 0.6.0\n\n* add allValues to FiniteField class\n\nChanges in 0.5.0\n\n* introduce FiniteField class";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.deepseq)
          (hsPkgs.type-level-numbers)
          (hsPkgs.algebra)
          ];
        };
      tests = {
        "TestPrimeField" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.finite-field)
            (hsPkgs.primes)
            (hsPkgs.type-level-numbers)
            ];
          };
        };
      };
    }