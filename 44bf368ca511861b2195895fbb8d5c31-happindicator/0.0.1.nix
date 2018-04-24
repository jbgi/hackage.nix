{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "happindicator";
          version = "0.0.1";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2011 the authors";
        maintainer = "";
        author = "Andrew Miller; some parts derived from Gtk2hs by Axel Simon, Duncan Coutts and many others";
        homepage = "";
        url = "";
        synopsis = "Binding to the appindicator library.";
        description = "libappindicator is a library for setting up indicator items and menus on indicator panels, as used in the Unity environment in Ubuntu. This binding allows libappindicator to be used from Haskell.";
        buildType = "Custom";
      };
      components = {
        happindicator = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.glib
            hsPkgs.gtk
          ];
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
          pkgconfig = [
            pkgconfPkgs."appindicator-0.1"
          ];
          build-tools = [
            hsPkgs.gtk2hsC2hs
            hsPkgs.gtk2hsHookGenerator
            hsPkgs.gtk2hsTypeGen
          ];
        };
      };
    }