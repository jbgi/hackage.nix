{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dsc"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kenny Shen <kenny@machinesung.com>";
      author = "";
      homepage = "https://github.com/qoelet/dsc#readme";
      url = "";
      synopsis = "Helper functions for setting up Double Submit Cookie defense for forms";
      description = "See README at <https://github.com/qoelet/dsc#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.SimpleAES)
          (hsPkgs.string-conversions)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.SimpleAES)
            (hsPkgs.string-conversions)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }