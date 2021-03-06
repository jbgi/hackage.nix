{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { develop = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "free-algebras"; version = "0.0.1.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2018 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/free-algebras#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/coot/free-algebras#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-fix)
          (hsPkgs.free)
          (hsPkgs.groups)
          (hsPkgs.kan-extensions)
          (hsPkgs.mtl)
          (hsPkgs.natural-numbers)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "free-algebras-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-fix)
            (hsPkgs.free)
            (hsPkgs.free-algebras)
            (hsPkgs.groups)
            (hsPkgs.hedgehog)
            (hsPkgs.kan-extensions)
            (hsPkgs.mtl)
            (hsPkgs.natural-numbers)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }