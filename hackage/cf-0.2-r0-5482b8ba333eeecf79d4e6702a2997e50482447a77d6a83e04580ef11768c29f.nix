{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cf"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "mitchell.v.riley@gmail.com";
      author = "Mitchell Riley";
      homepage = "http://github.com/mvr/cf";
      url = "";
      synopsis = "Exact real arithmetic using continued fractions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cf)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      };
    }