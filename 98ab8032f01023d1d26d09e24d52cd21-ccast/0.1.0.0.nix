{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ccast";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 (c) chessai";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "https://github.com/chessai/ccast";
        url = "";
        synopsis = "typesafe c-style casts; useful for FFI";
        description = "Type-safe C-style casts between numeric types, especially\nthose in Foreign.C.Types.";
        buildType = "Simple";
      };
      components = {
        ccast = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }