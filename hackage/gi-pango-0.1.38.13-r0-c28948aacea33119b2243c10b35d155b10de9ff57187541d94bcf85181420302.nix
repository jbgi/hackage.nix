{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gi-pango"; version = "0.1.38.13"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Pango bindings";
      description = "Bindings for Pango, autogenerated by haskell-gi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gobject)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        pkgconfig = [ (pkgconfPkgs.pango) ];
        };
      };
    }