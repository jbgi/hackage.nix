{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "wai-logger-prefork"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "A logging system for preforked WAI apps";
      description = "A logging system for preforked WAI apps";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.date-cache)
          (hsPkgs.fast-logger)
          (hsPkgs.http-types)
          (hsPkgs.unix)
          (hsPkgs.wai)
          (hsPkgs.wai-logger)
          ];
        };
      };
    }