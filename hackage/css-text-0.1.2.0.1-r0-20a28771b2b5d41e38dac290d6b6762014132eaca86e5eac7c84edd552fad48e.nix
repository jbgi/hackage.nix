{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "css-text"; version = "0.1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "CSS parser and renderer.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.attoparsec) ];
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }