{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl-utils"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcin Mrotek 2015";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/vinyl-utils";
      url = "";
      synopsis = "Utilities for vinyl";
      description = "Operations on records parametrized with various kinds of functors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.transformers)
          (hsPkgs.vinyl)
          ];
        };
      };
    }