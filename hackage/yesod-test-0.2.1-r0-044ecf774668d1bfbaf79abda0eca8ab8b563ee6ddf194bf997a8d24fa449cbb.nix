{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { blaze_html_0_5 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-test"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Nubis <nubis@woobiz.com.ar>, Michael Snoyman";
      author = "Nubis <nubis@woobiz.com.ar>";
      homepage = "http://www.yesodweb.com";
      url = "";
      synopsis = "integration testing for WAI/Yesod Applications";
      description = "Behaviour Oriented integration Testing for Yesod Applications";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.attoparsec)
          (hsPkgs.persistent)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-test)
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.HUnit)
          (hsPkgs.hspec)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.containers)
          (hsPkgs.xml2html)
          (hsPkgs.html-conduit)
          ] ++ (if flags.blaze_html_0_5
          then [ (hsPkgs.blaze-html) (hsPkgs.blaze-markup) ]
          else [ (hsPkgs.blaze-html) ]);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod-test)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.xml-conduit)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }