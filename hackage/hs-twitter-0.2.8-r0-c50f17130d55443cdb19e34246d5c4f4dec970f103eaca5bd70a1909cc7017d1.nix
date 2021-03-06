{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hs-twitter"; version = "0.2.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkio.com>";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the Twitter API";
      description = "The hs-twitter API binding lets you access twitter.com's\nresources and methods from Haskell.\n\nImplements the full API, see <http://apiwiki.twitter.com/REST+API+Documentation>\n\nFor more info on use, please visit <http://haskell.forkIO.com/twitter> ,\nthe @CHANGES@ file in the distribution contains change info for the package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
          (hsPkgs.json)
          (hsPkgs.mime)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.random)
          ];
        };
      };
    }