{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wkt"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/wkt";
      url = "";
      synopsis = "Parsec parsers and types for geographic data in well-known text (WKT) format.";
      description = "Parsec parsers and types for geographic metadata in the well-known\ntext (WKT) format <https://en.wikipedia.org/wiki/Well-known_text>.\nWKT can be used to specify spatial reference systems and primitive\ngeometry in spatial datasets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.trifecta)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.trifecta)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.wkt)
            ];
          };
        };
      };
    }