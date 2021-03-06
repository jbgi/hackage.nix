{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simpleconfig"; version = "0.0.10"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexey Kotlyarov";
      maintainer = "a@koterpillar.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/simpleconfig#readme";
      url = "";
      synopsis = "Short description of your package";
      description = "Please see the README on Github at <https://github.com/koterpillar/simpleconfig#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.lens)
          ];
        };
      tests = {
        "simpleconfig-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.either)
            (hsPkgs.generic-deriving)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.simpleconfig)
            (hsPkgs.text)
            ];
          };
        };
      };
    }