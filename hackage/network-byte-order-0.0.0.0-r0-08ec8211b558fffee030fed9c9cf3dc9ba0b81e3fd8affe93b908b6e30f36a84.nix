{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "network-byte-order"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "Network byte order utilities";
      description = "Peek and poke functions for network byte order.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      tests = {
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.doctest) ];
          };
        };
      };
    }