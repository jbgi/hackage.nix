{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; use_xft = true; testing = false; };
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "xmonad-contrib-bluetilebranch";
        version = "0.8.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org/";
      url = "";
      synopsis = "Third party extensions for xmonad";
      description = "This is a modified version of xmonad-contrib used by Bluetile.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.X11)
          (hsPkgs.xmonad-bluetilebranch)
          (hsPkgs.xmonad-bluetilebranch)
          (hsPkgs.utf8-string)
          ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            ]
          else [ (hsPkgs.base) ])) ++ (pkgs.lib).optionals (flags.use_xft) [
          (hsPkgs.X11-xft)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }