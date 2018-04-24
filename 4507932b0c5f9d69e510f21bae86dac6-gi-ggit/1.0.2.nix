{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-ggit";
          version = "1.0.2";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "libgit2-glib bindings";
        description = "Bindings for libgit2-glib, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        gi-ggit = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.haskell-gi-overloading
            hsPkgs.gi-gio
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhc && false) hsPkgs.haskell-gi-overloading;
          pkgconfig = [
            pkgconfPkgs."libgit2-glib-1.0"
          ];
        };
      };
    }