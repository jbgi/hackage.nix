{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "gi-gtksource"; version = "3.0.16"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GtkSource bindings";
      description = "Bindings for GtkSource, autogenerated by haskell-gi.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.haskell-gi-overloading)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-pango)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-atk)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs.haskell-gi-overloading);
        pkgconfig = [ (pkgconfPkgs.gtksourceview-3.0) ];
        };
      };
    }