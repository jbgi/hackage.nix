{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-effects"; version = "0.10.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://gitlab.com/LukaHorvat/simple-effects";
      url = "";
      synopsis = "A simple effect system that integrates with MTL";
      description = "Please see the tutorial modules";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.list-t)
          (hsPkgs.array)
          (hsPkgs.MonadRandom)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.async)
          ];
        };
      tests = {
        "tests" = { depends = [ (hsPkgs.base) (hsPkgs.simple-effects) ]; };
        };
      benchmarks = {
        "bench-effects" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.simple-effects)
            ];
          };
        };
      };
    }