{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "regions-monadstf"; version = "0.3.1.6"; };
      license = "BSD-3-Clause";
      copyright = "2009-2011 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/regions-monadstf/";
      url = "";
      synopsis = "Monads-tf instances for the RegionT monad transformer";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.transformers)
          (hsPkgs.regions)
          (hsPkgs.monads-tf)
          ];
        };
      };
    }