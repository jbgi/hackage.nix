{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "metadata"; version = "0.1.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "cutsea110";
      homepage = "http://github.com/cutsea110/metadata";
      url = "";
      synopsis = "metadata library for semantic web.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.time) ]; };
      };
    }