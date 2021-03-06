{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "json-schema"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "";
      url = "";
      synopsis = "Types and type classes for defining JSON schemas.";
      description = "Types and type classes for defining JSON schemas.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.generic-aeson)
          (hsPkgs.generic-deriving)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "json-schema-generic-aeson-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-utils)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.generic-aeson)
            (hsPkgs.json-schema)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }