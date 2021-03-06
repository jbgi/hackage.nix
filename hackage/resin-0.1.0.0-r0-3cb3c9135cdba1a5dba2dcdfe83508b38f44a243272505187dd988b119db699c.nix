{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "resin"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "http://github.com/cartazio/resin";
      url = "";
      synopsis = "High performance variable binders";
      description = "High Performance Variable Binders library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.semigroupoids)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0" && (compiler.isGhc && (compiler.version).lt "8.2"))) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      };
    }