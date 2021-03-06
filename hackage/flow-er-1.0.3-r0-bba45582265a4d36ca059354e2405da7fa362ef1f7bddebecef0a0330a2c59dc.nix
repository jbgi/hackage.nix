{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "flow-er"; version = "1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "bez@brooklynzelenka.com";
      author = "Brooklyn Zelenka";
      homepage = "https://github.com/expede/flower#README";
      url = "";
      synopsis = "More directional operators";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.flow) ]; };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.doctest)
            (hsPkgs.flow)
            (hsPkgs.flow-er)
            ];
          };
        };
      };
    }