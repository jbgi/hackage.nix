{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "CTRex"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzeus@gmail.com";
      author = "Atze van der Ploeg";
      homepage = "http://www.haskell.org/haskellwiki/CTRex";
      url = "";
      synopsis = "Open records using closed type families.";
      description = "Open records using closed type families.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }