{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quiver-binary"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Binary serialisation support for Quivers";
      description = "Handling for the binary library within Quivers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.quiver)
          (hsPkgs.quiver-bytestring)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.quiver-binary)
            (hsPkgs.base)
            (hsPkgs.quiver)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }