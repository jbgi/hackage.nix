{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { nopkgconfig = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "bindings-libzip"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/jetxee/hs-libzip/";
      url = "";
      synopsis = "Low level bindings to libzip.";
      description = "This package provides low-level bindings to libzip library.\nFor higher-level interface please use LibZip package:\n<http://hackage.haskell.org/package/LibZip>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bindings-DSL) ];
        libs = (pkgs.lib).optionals (flags.nopkgconfig) [
          (pkgs."zip")
          (pkgs."z")
          ];
        pkgconfig = (pkgs.lib).optional (!flags.nopkgconfig) (pkgconfPkgs.libzip);
        };
      };
    }