{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gi-gtk-declarative-app-simple";
        version = "0.2.0";
        };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Declarative GTK+ programming in Haskell in the style of Pux.";
      description = "Experimental application architecture in the style of\nPureScript Pux, built on top of gi-gtk-declarative. Learn\nmore in the README below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-gtk-declarative)
          (hsPkgs.gi-gdk)
          (hsPkgs.haskell-gi)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi-overloading)
          (hsPkgs.pipes)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.text)
          ];
        };
      };
    }