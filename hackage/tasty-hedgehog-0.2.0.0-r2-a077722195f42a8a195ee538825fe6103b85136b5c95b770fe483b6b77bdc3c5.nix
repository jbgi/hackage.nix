{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-hedgehog"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "dave.laing.80@gmail.com";
      author = "Dave Laing";
      homepage = "https://github.com/qfpl/tasty-hedgehog";
      url = "";
      synopsis = "Integration for tasty and hedgehog.";
      description = "Integrates the hedgehog testing library with the tasty testing framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.tasty)
          (hsPkgs.hedgehog)
          ];
        };
      tests = {
        "tasty-hedgehog-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty-hedgehog)
            ];
          };
        };
      };
    }