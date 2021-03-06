{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "persistent-mongoDB"; version = "1.1.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using mongoDB.";
      description = "Backend for the persistent library using mongoDB. The haddocks aren't building on hackage right now, but I put them up at <http://yesodweb.github.com/persistent/persistent-mongoDB/Database-Persist-MongoDB.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.mongoDB)
          (hsPkgs.bson)
          (hsPkgs.network)
          (hsPkgs.cereal)
          (hsPkgs.path-pieces)
          (hsPkgs.monad-control)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.pool-conduit)
          (hsPkgs.time)
          ];
        };
      };
    }