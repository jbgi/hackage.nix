{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hunit-rematch"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tcrayford@googlemail.com";
      author = "Tom Crayford";
      homepage = "github.com/tcrayford/rematch";
      url = "";
      synopsis = "HUnit support for rematch";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.rematch) (hsPkgs.HUnit) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.rematch)
            ];
          };
        };
      };
    }