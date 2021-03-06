{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rose-trees"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A collection of rose tree structures.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.witherable)
          (hsPkgs.sets)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.mtl)
          (hsPkgs.criterion)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rose-trees)
            (hsPkgs.witherable)
            (hsPkgs.containers)
            (hsPkgs.semigroups)
            (hsPkgs.semigroupoids)
            (hsPkgs.sets)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rose-trees)
            (hsPkgs.witherable)
            (hsPkgs.containers)
            (hsPkgs.semigroups)
            (hsPkgs.semigroupoids)
            (hsPkgs.sets)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.mtl)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }