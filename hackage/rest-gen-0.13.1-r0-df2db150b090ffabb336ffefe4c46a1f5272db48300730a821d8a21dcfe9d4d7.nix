{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "rest-gen"; version = "0.13.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Documentation and client generation from rest definition.";
      description = "Documentation and client generation from rest definition.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.HStringTemplate)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.code-builder)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.fclabels)
          (hsPkgs.filepath)
          (hsPkgs.generic-aeson)
          (hsPkgs.happstack-server)
          (hsPkgs.hashable)
          (hsPkgs.hslogger)
          (hsPkgs.hxt)
          (hsPkgs.json-schema)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.regular)
          (hsPkgs.rest-core)
          (hsPkgs.rest-types)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.split)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "rest-gen-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.rest-core)
            (hsPkgs.rest-gen)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }