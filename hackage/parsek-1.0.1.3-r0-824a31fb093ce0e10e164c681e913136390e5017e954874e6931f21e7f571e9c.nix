{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "parsek"; version = "1.0.1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Koen Claessen, Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Parallel Parsing Processes";
      description = "Koen Claessen's PPP, Modified.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }