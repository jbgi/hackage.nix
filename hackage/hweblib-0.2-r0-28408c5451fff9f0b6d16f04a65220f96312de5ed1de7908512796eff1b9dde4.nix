{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hweblib"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aycan.irican@core.gen.tr";
      author = "Aycan iRiCAN";
      homepage = "http://github.com/aycanirican/hweblib";
      url = "";
      synopsis = "Haskell Web Library";
      description = "The library includes attoparsec based incremental parsers for\nrfc2616 (http) and rfc3986 (uri), rfc2045-46 (mime). The package\nname will subject to change due to broad range of rfc coverage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.monads-fd)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          ];
        };
      };
    }