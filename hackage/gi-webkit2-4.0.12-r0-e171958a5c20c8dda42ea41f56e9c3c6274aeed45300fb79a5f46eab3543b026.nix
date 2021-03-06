{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      overloaded-methods = true;
      overloaded-properties = true;
      overloaded-signals = true;
      };
    package = {
      specVersion = "1.24";
      identifier = { name = "gi-webkit2"; version = "4.0.12"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "WebKit2 bindings";
      description = "Bindings for WebKit2, autogenerated by haskell-gi.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-soup)
          (hsPkgs.gi-javascriptcore)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-atk)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        pkgconfig = [ (pkgconfPkgs.webkit2gtk-4.0) ];
        };
      };
    }