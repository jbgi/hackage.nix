{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hiccup"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "consalus+hiccup@google.com";
      author = "Kyle Consalus";
      homepage = "";
      url = "";
      synopsis = "";
      description = "A simplistic interpreter for a subset of tcl";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hiccup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.haskell98)
            ];
          };
        };
      };
    }