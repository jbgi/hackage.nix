{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "geolite-csv"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade";
      url = "";
      synopsis = "Geolite CSV Parser";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.colonnade)
          (hsPkgs.siphon)
          (hsPkgs.ip)
          (hsPkgs.text)
          (hsPkgs.pipes)
          ];
        };
      tests = {
        "geolite-csv-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.geolite-csv)
            (hsPkgs.siphon)
            (hsPkgs.colonnade)
            (hsPkgs.test-framework)
            (hsPkgs.text)
            (hsPkgs.pipes)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-text)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }