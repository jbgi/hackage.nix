{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "smartGroup"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "http://patch-tag.com/r/salazar/smartGroup";
      url = "";
      synopsis = "group strings by words in common";
      description = "Given a list of strings, smartGroup provides a set of functions\nto group them into smaller lists based on the most common words of the set.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.heap)
          (hsPkgs.bytestring)
          ];
        };
      };
    }