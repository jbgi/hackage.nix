{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "warp-tls"; version = "2.0.3.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "HTTP over SSL/TLS support for Warp via the TLS package";
      description = "HTTP over SSL/TLS support for Warp via the TLS package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.network-conduit)
          (hsPkgs.data-default-class)
          (hsPkgs.tls)
          (hsPkgs.network)
          (hsPkgs.cprng-aes)
          (hsPkgs.streaming-commons)
          (hsPkgs.resourcet)
          ];
        };
      };
    }