{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "array";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Mutable and immutable arrays";
        description = "This package defines the classes @IArray@ of immutable arrays and\n@MArray@ of arrays mutable within appropriate monads, as well as\nsome instances of these classes.";
        buildType = "Simple";
      };
      components = {
        array = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (!(compiler.isNhc98 && true)) hsPkgs.syb;
        };
      };
    }