{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gi-gstvideo"; version = "0.1.6.13"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GstVideo bindings";
      description = "Bindings for GstVideo, autogenerated by haskell-gi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-gst)
          (hsPkgs.gi-gstbase)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        pkgconfig = [ (pkgconfPkgs.gstreamer-video-1.0) ];
        };
      };
    }