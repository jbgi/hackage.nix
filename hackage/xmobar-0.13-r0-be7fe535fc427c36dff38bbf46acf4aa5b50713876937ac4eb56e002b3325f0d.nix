{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      small_base = true;
      with_xft = false;
      with_utf8 = true;
      with_inotify = false;
      with_iwlib = false;
      with_mpd = false;
      all_extensions = false;
      with_alsa = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "xmobar"; version = "0.13"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jose A. Ortega Ruiz <jao@gnu.org>";
      author = "Andrea Rossato";
      homepage = "http://projects.haskell.org/xmobar/";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar\nfeatures, like dynamic color management, output templates,\nand extensibility through plugins.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xmobar" = {
          depends = ((((([
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            (hsPkgs.time)
            ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.process)
              (hsPkgs.old-time)
              (hsPkgs.old-locale)
              (hsPkgs.bytestring)
              (hsPkgs.directory)
              ]
            else [
              (hsPkgs.base)
              ])) ++ (pkgs.lib).optionals (flags.with_xft || flags.all_extensions) [
            (hsPkgs.utf8-string)
            (hsPkgs.X11-xft)
            ]) ++ (pkgs.lib).optional (flags.with_utf8 || flags.all_extensions) (hsPkgs.utf8-string)) ++ (pkgs.lib).optional (flags.with_inotify || flags.all_extensions) (hsPkgs.hinotify)) ++ (pkgs.lib).optional (flags.with_mpd || flags.all_extensions) (hsPkgs.libmpd)) ++ (pkgs.lib).optional (flags.with_alsa || flags.all_extensions) (hsPkgs.alsa-mixer);
          libs = (pkgs.lib).optional (flags.with_iwlib || flags.all_extensions) (pkgs."iw");
          };
        };
      };
    }