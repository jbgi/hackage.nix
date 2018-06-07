{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "shake-ccjs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vanessa.mchale@iohk.io";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "Shake rules for CCJS";
        description = "Library for using CCJS with [shake](hackage.haskell.org/package/shake)";
        buildType = "Simple";
      };
      components = {
        shake-ccjs = {
          depends  = [
            hsPkgs.base
            hsPkgs.shake
            hsPkgs.directory
          ];
        };
      };
    }