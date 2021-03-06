{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-vanessa"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/xmonad-vanessa#readme";
      url = "";
      synopsis = "Custom xmonad, via stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          (hsPkgs.xmonad-extras)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.X11)
          (hsPkgs.tibetan-utils)
          ];
        };
      exes = {
        "xmonad" = { depends = [ (hsPkgs.base) (hsPkgs.xmonad-vanessa) ]; };
        "getkb" = { depends = [ (hsPkgs.base) (hsPkgs.xmonad-vanessa) ]; };
        };
      };
    }