{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sentiwordnet-parser"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/sentiwordnet-parser#readme";
      url = "";
      synopsis = "Parser for the SentiWordNet tab-separated file";
      description = "Parser for the SentiWordNet tab-separated file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Decimal)
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.parsers)
          (hsPkgs.safe)
          (hsPkgs.string-class)
          (hsPkgs.text)
          (hsPkgs.trifecta)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      };
    }