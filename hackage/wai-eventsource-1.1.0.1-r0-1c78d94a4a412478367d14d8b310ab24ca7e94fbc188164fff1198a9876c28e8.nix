{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-eventsource"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregweber.info";
      author = "Chris Smith, Mathias Biilmann Christensen";
      homepage = "http://www.yesodweb.com/book/wai";
      url = "";
      synopsis = "WAI support for server-sent events";
      description = "WAI support for server-sent events";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.conduit)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.transformers)
          ];
        };
      };
    }