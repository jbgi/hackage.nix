{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "extensible-effects-concurrent";
        version = "0.3.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright Sven Heyll";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/extensible-effects-concurrent#readme";
      url = "";
      synopsis = "Message passing concurrency as extensible-effect";
      description = "Please see the README on GitHub at <https://github.com/sheyll/extensible-effects-concurrent#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.lens)
          (hsPkgs.logging-effect)
          (hsPkgs.transformers)
          (hsPkgs.parallel)
          (hsPkgs.process)
          (hsPkgs.monad-control)
          (hsPkgs.random)
          (hsPkgs.extensible-effects)
          (hsPkgs.stm)
          (hsPkgs.tagged)
          ];
        };
      tests = {
        "extensible-effects-concurrent-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.extensible-effects-concurrent)
            (hsPkgs.extensible-effects)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.lens)
            (hsPkgs.HUnit)
            (hsPkgs.stm)
            ];
          };
        };
      };
    }