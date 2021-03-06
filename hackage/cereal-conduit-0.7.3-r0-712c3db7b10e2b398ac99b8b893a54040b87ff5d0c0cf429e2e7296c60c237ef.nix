{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cereal-conduit"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
      description = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "test-cereal-conduit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.resourcet)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }