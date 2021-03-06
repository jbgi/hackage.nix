{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-authentication = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "liblastfm"; version = "0.0.3.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Matvey Aksenov, Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "Wrapper to Lastfm API";
      description = "Simple but complete wrapper to Lastfm API. Can send some stuff and receive reponses from Lastfm. JSON/XML parsing is an exercise for the user.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.curl)
          (hsPkgs.pureMD5)
          (hsPkgs.urlencoded)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.xml)
          (hsPkgs.utf8-string)
          ];
        };
      tests = {
        "json-no-authentication" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
            (hsPkgs.HUnit)
            (hsPkgs.liblastfm)
            ];
          };
        "json-authentication" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
            (hsPkgs.HUnit)
            (hsPkgs.liblastfm)
            ];
          };
        };
      };
    }