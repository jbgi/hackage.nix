{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "bitset"; version = "1.4.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "superbobry@gmail.com";
      author = "Sergei Lebedev <superbobry@gmail.com>\n, Aleksey Kladov <aleksey.kladov@gmail.com>\n, Fedor Gogolev <knsd@knsd.net>";
      homepage = "";
      url = "";
      synopsis = "A space-efficient set data structure.";
      description = "A /bit set/ is a compact data structure, which maintains a set of members\nfrom a type that can be enumerated (i. e. has an `Enum' instance).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.integer-gmp)
          (hsPkgs.ghc-prim)
          ];
        libs = [ (pkgs."gmp") ];
        };
      tests = {
        "bitset-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.bitset)
            ];
          };
        };
      benchmarks = {
        "bitset-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.integer-gmp)
            (hsPkgs.ghc-prim)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            ];
          libs = [ (pkgs."gmp") ];
          };
        };
      };
    }