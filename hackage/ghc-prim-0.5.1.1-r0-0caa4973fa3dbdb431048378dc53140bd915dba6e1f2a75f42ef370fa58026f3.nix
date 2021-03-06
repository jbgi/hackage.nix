{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { include-ghc-prim = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-prim"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "GHC primitives";
      description = "This package contains the primitive types and operations supplied by GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.rts) ];
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."user32")
          (pkgs."mingw32")
          (pkgs."mingwex")
          ];
        };
      };
    }