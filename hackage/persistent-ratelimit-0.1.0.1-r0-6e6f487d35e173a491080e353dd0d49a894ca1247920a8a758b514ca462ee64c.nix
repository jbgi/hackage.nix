{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-ratelimit"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "dev@jamesparker.me";
      author = "James Parker";
      homepage = "https://github.com/jprider63/persistent-ratelimit";
      url = "";
      synopsis = "A library for rate limiting activities with a persistent backend.";
      description = "This packages provides a library for rate limiting activities with a persistent backend.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.time) (hsPkgs.yesod) ]; };
      };
    }