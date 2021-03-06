{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "http-conduit"; version = "2.1.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/http-conduit";
      url = "";
      synopsis = "HTTP client package with conduit interface and HTTPS support.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.http-types)
          (hsPkgs.lifted-base)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.data-default-class)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.data-default-class)
            (hsPkgs.connection)
            (hsPkgs.warp-tls)
            (hsPkgs.time)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.utf8-string)
            (hsPkgs.case-insensitive)
            (hsPkgs.lifted-base)
            (hsPkgs.network)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.wai-conduit)
            (hsPkgs.http-types)
            (hsPkgs.cookie)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.streaming-commons)
            (hsPkgs.aeson)
            (hsPkgs.temporary)
            ];
          };
        };
      };
    }