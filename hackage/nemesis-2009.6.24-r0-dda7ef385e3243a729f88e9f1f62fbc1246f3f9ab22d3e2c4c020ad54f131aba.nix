{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "nemesis"; version = "2009.6.24"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/nemesis";
      url = "";
      synopsis = "a rake like task management tool";
      description = "a rake like task management tool";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.Glob)
          ];
        };
      exes = {
        "nemesis" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }