{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "xml-catalog"; version = "1.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michaels@suite-sol.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Parse XML catalog files (deprecated)";
      description = "Parse XML catalog files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.xml-conduit)
          (hsPkgs.uri-conduit)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          ];
        };
      };
    }