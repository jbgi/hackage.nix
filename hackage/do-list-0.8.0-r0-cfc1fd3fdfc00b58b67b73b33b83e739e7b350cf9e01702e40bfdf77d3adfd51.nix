{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "do-list"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Taras Serduke";
      maintainer = "taras.serduke@gmail.com";
      author = "Taras Serduke";
      homepage = "https://github.com/tserduke/do-list";
      url = "";
      synopsis = "List construction with do notation";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.dlist) ]; };
      exes = {
        "example" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.do-list) ];
          };
        };
      tests = {
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.do-list) (hsPkgs.hspec) ];
          };
        };
      };
    }