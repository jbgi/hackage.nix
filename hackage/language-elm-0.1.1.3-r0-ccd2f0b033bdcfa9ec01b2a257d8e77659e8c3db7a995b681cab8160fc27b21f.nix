{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-elm"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2017 Elias Lawson-Fox";
      maintainer = "me@eliaslfox.com";
      author = "Elias Lawson-Fox";
      homepage = "https://github.com/eliaslfox/language-elm#readme";
      url = "";
      synopsis = "Generate elm code";
      description = "Generate elm code from an ast";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MissingH)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.protolude)
          ];
        };
      tests = {
        "language-elm-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.hspec)
            (hsPkgs.language-elm)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.protolude)
            ];
          };
        };
      };
    }