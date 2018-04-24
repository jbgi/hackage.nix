{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "glade";
          version = "0.12.1";
        };
        license = "LGPL-2.1-only";
        copyright = "(c) 2001-2010 The Gtk2Hs Team";
        maintainer = "gtk2hs-users@sourceforge.net";
        author = "Manuel M T Chakravarty, Duncan Coutts";
        homepage = "http://projects.haskell.org/gtk2hs/";
        url = "";
        synopsis = "Binding to the glade library.";
        description = "This library allows to load externally stored user interfaces into\nprograms. This allows alteration of the interface without recompilation\nof the program.\n\nNote that this functionality is now provided in gtk directly\n(as of version 2.12 of the gtk+ C lib) by the\nGraphics.UI.Gtk.Builder module.";
        buildType = "Custom";
      };
      components = {
        glade = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.gtk
          ];
          pkgconfig = [
            pkgconfPkgs."libglade-2.0"
          ];
          build-tools = [
            hsPkgs.gtk2hsC2hs
            hsPkgs.gtk2hsHookGenerator
            hsPkgs.gtk2hsTypeGen
          ];
        };
      };
    }