{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scalendar"; version = "1.0.0"; };
      license = "MIT";
      copyright = "xxxxxxxxxxxxxxxxxxxxxxxx";
      maintainer = "Sebastian Pulido Gómez";
      author = "Sebastian Pulido Gómez";
      homepage = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
      url = "";
      synopsis = "This is a library for handling calendars and resource availability\nbased on the \"top-nodes algorithm\" and set operations.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.text)
          ];
        };
      tests = {
        "scalendar-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.scalendar)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.text)
            ];
          };
        };
      };
    }