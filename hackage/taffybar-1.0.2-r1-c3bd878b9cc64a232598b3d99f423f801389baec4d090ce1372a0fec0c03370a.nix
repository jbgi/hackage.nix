{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "taffybar"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tristan@nochair.net";
      author = "Tristan Ravitch";
      homepage = "http://github.com/travitch/taffybar";
      url = "";
      synopsis = "A desktop bar similar to xmobar, but with more GUI";
      description = "Taffybar is a gtk+3 (through gtk2hs) based desktop information bar, intended\nprimarily for use with XMonad, though it can also function alongside other EWMH\ncompliant window managers. It is similar in spirit to xmobar, but it differs in\nthat it gives up some simplicity for a reasonable helping of eye candy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.alsa-mixer)
          (hsPkgs.ConfigFile)
          (hsPkgs.HStringTemplate)
          (hsPkgs.HTTP)
          (hsPkgs.X11)
          (hsPkgs.cairo)
          (hsPkgs.containers)
          (hsPkgs.dbus)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.either)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-gdkx11)
          (hsPkgs.gi-gtk)
          (hsPkgs.glib)
          (hsPkgs.gtk-traymanager)
          (hsPkgs.gtk3)
          (hsPkgs.mtl)
          (hsPkgs.multimap)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.process)
          (hsPkgs.rate-limit)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.time-units)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.tuple)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.xdg-basedir)
          (hsPkgs.xml)
          (hsPkgs.xml-helpers)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        pkgconfig = [ (pkgconfPkgs.gtk+-3.0) ];
        };
      exes = {
        "taffybar" = {
          depends = [ (hsPkgs.base) (hsPkgs.taffybar) ];
          pkgconfig = [ (pkgconfPkgs.gtk+-3.0) ];
          };
        };
      };
    }