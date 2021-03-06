{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pool-conduit"; version = "0.1.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Resource pool allocations via ResourceT.";
      description = "Allocate resources from a pool, guaranteeing resource handling via the ResourceT transformer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.resource-pool)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.monad-control)
          ];
        };
      };
    }