{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-json"; version = "1.1.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Generate content for Yesod using the aeson package.";
      description = "Generate content for Yesod using the aeson package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-routes)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.shakespeare-js)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
          (hsPkgs.safe)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai-test)
            (hsPkgs.hspec)
            (hsPkgs.yesod-json)
            (hsPkgs.yesod-core)
            (hsPkgs.text)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }