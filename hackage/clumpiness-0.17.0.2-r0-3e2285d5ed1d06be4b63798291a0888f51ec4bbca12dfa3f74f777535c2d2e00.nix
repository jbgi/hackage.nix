{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clumpiness"; version = "0.17.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory Schwartz";
      homepage = "";
      url = "";
      synopsis = "Calculate the clumpiness of leaf properties in a tree";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.tree-fun) ];
        };
      };
    }