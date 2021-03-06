{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pure-io"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Pure IO monad.";
      description = "Pure IO monad.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.safe) (hsPkgs.mtl) ]; };
      exes = {
        "pure-io" = { depends = [ (hsPkgs.base) (hsPkgs.safe) (hsPkgs.mtl) ]; };
        };
      };
    }