{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "dhall-json"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compile Dhall to JSON or YAML";
      description = "Use this package if you want to compile Dhall expressions to JSON or YAML.\nYou can use this package as a library or an executable:\n\n* See the \"Dhall.JSON\" module if you want to use this package as a library\n\n* Use the @dhall-to-json@ or @dhall-to-yaml@ programs from this package if\nyou want an executable\n\nThe \"Dhall.JSON\" module also contains instructions for how to use this\npackage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.dhall)
          (hsPkgs.neat-interpolation)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "dhall-to-json" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.optparse-generic)
            (hsPkgs.trifecta)
            (hsPkgs.text)
            ];
          };
        "dhall-to-yaml" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.optparse-generic)
            (hsPkgs.trifecta)
            (hsPkgs.yaml)
            (hsPkgs.text)
            ];
          };
        };
      };
    }