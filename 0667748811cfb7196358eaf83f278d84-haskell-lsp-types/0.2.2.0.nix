{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-lsp-types";
          version = "0.2.2.0";
        };
        license = "MIT";
        copyright = "Alan Zimmerman, 2016-2017";
        maintainer = "alan.zimm@gmail.com";
        author = "Alan Zimmerman";
        homepage = "https://github.com/alanz/haskell-lsp";
        url = "";
        synopsis = "Haskell library for the Microsoft Language Server Protocol, data types";
        description = "An implementation of the types to allow language implementors to\nsupport the Language Server Protocol for their specific language.";
        buildType = "Simple";
      };
      components = {
        haskell-lsp-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }