{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsemail"; version = "1.7.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>, Gero Kriependorf <gero-dev@physra.net>, Marty Pauley <marty@kasei.com>";
      homepage = "http://gitorious.org/hsemail";
      url = "";
      synopsis = "Internet Message Parsers";
      description = "Parsers for the syntax defined in RFC2821 and 2822";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.old-time)
          ];
        };
      tests = {
        "test-hsemail" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
            (hsPkgs.old-time)
            ];
          };
        "doctest-hsemail" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }