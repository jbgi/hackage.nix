{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ivory-hw"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "jamesjb@galois.com, leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "http://ivorylang.org";
      url = "";
      synopsis = "Ivory hardware model (STM32F4).";
      description = "Hardware model for Ivory.  Currently, the STM32F4 is supported; others may be added.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.ivory)
          (hsPkgs.ivory-artifact)
          ];
        };
      };
    }