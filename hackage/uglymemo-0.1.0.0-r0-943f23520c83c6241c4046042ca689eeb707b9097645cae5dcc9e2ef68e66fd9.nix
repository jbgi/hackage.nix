{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "uglymemo"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lennart@augustsson.net";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "A simple (but internally ugly) memoization function.";
      description = "A simple (but internally ugly) memoization function.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      };
    }