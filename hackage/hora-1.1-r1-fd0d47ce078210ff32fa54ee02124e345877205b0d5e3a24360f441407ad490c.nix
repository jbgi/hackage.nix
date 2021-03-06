{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hora"; version = "1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/hora";
      url = "";
      synopsis = "date time";
      description = "! bug in DatePart Ord. do not use 1.1. Bug fix is due today";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.time) (hsPkgs.binary) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            (hsPkgs.binary)
            ];
          };
        };
      };
    }