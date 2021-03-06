{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "safer-file-handles-bytestring"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2010-2011 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/safer-file-handles-bytestring/";
      url = "";
      synopsis = "Extends safer-file-handles with ByteString operations";
      description = "Extends @safer-file-handles@ with @ByteString@ operations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.regions)
          (hsPkgs.transformers)
          (hsPkgs.explicit-iomodes-bytestring)
          (hsPkgs.safer-file-handles)
          ];
        };
      };
    }