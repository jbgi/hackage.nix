{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "build"; version = "1.0"; };
      license = "MIT";
      copyright = "Andrey Mokhov, Neil Mitchell, Simon Peyton Jones, 2018";
      maintainer = "Andrey Mokhov <andrey.mokhov@gmail.com>, github: @snowleopard";
      author = "Andrey Mokhov, Neil Mitchell, Simon Peyton Jones";
      homepage = "https://github.com/snowleopard/build";
      url = "";
      synopsis = "Build systems a la carte";
      description = "A library for experimenting with build systems and\nincremental computation frameworks, based on the ideas\npresented in the ICFP 2018 paper \"Build Systems a la Carte\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.algebraic-graphs)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.build)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.extra)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }