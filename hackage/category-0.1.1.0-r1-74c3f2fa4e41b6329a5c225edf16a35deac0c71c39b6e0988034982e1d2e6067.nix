{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "category"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Categorical types and classes";
      description = "";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) (hsPkgs.alg) ]; }; };
    }