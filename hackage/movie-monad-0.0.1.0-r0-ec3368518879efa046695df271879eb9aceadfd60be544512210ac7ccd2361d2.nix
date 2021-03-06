{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "movie-monad"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 David Lettier";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/movie-monad";
      url = "";
      synopsis = "Plays videos using GStreamer and GTK+.";
      description = "Desktop video player that uses GStreamer and GTK+.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "movie-monad" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.MissingH)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-xlib)
            (hsPkgs.gi-gobject)
            (hsPkgs.gi-glib)
            (hsPkgs.gi-gdkx11)
            (hsPkgs.gi-gstvideo)
            (hsPkgs.gi-gdk)
            (hsPkgs.gi-gst)
            (hsPkgs.gi-gtk)
            ];
          };
        };
      };
    }