{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "attoparsec-uri"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-uri#readme";
      url = "";
      synopsis = "URI parser / printer using attoparsec";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytedump)
          (hsPkgs.n-tuple)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      };
    }