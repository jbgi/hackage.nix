{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; formlets = false; };
    package = {
      specVersion = "1.4.0.0";
      identifier = { name = "happstack-facebook"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "http://src.seereason.com/ghc6103/happstack-facebook/";
      url = "";
      synopsis = "A package for building Facebook applications using Happstack";
      description = "A package for building Facebook applications using Happstack";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.hsp)
          (hsPkgs.harp)
          (hsPkgs.happstack-ixset)
          (hsPkgs.happstack-data)
          (hsPkgs.happstack-util)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.happstack-state)
          (hsPkgs.html)
          (hsPkgs.happstack-server)
          (hsPkgs.hsx)
          (hsPkgs.applicative-extras)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.RJson)
          (hsPkgs.old-time)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.happstack)
          (hsPkgs.json)
          (hsPkgs.URLT)
          (hsPkgs.filepath)
          ] ++ (pkgs.lib).optionals (flags.base4) [
          (hsPkgs.base)
          (hsPkgs.syb)
          ]) ++ (pkgs.lib).optionals (flags.formlets) [
          (hsPkgs.happstack-extra)
          (hsPkgs.formlets)
          (hsPkgs.formlets-hsp)
          ];
        };
      exes = { "demo" = {}; };
      };
    }