{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mikmod"; version = "0.2.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "evanrinehart@gmail.com";
      author = "Evan Rinehart";
      homepage = "https://github.com/evanrinehart/mikmod";
      url = "";
      synopsis = "MikMod bindings";
      description = "MikMod bindings for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      };
    }