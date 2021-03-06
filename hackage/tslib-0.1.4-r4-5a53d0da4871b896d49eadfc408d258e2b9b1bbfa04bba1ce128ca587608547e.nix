{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tslib"; version = "0.1.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "-";
      author = "-";
      homepage = "";
      url = "";
      synopsis = "-";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hybrid-vectors)
          (hsPkgs.lens)
          (hsPkgs.statistics)
          (hsPkgs.time)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "basicTest" = {
          depends = [
            (hsPkgs.tslib)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.time)
            (hsPkgs.vector)
            ];
          };
        "basicUTimeTest" = {
          depends = [
            (hsPkgs.tslib)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.time)
            (hsPkgs.vector)
            ];
          };
        "periodicTest" = {
          depends = [
            (hsPkgs.tslib)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.time)
            ];
          };
        "utimeTest" = {
          depends = [
            (hsPkgs.tslib)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            ];
          };
        };
      };
    }