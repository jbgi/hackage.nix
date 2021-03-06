{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { threaded = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hbro"; version = "1.0.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral at mailoo dot org";
      author = "koral";
      homepage = "http://projects.haskell.org/hbro/";
      url = "";
      synopsis = "Minimal KISS compliant browser";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.cond)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.filepath)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.pango)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.webkit)
          (hsPkgs.xdg-basedir)
          (hsPkgs.zeromq-haskell)
          ];
        };
      exes = {
        "hbro" = {
          depends = [
            (hsPkgs.hbro)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.glib)
            (hsPkgs.gtk)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }