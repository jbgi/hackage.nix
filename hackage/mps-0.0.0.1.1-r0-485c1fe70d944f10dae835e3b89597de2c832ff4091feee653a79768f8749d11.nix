{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "mps"; version = "0.0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/mps/";
      url = "";
      synopsis = "message passing style helpers";
      description = "message passing style helpers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.fgl)
          (hsPkgs.QuickCheck)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.pandoc)
          (hsPkgs.regexpr)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.directory)
          ];
        };
      };
    }