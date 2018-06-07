{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mergeless";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/mergeless#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>";
        buildType = "Simple";
      };
      components = {
        mergeless = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.validity
            hsPkgs.validity-containers
            hsPkgs.validity-time
          ];
        };
      };
    }