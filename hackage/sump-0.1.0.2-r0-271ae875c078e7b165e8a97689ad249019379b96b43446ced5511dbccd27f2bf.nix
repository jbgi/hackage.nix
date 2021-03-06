{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sump"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/sump";
      url = "";
      synopsis = "A Haskell interface to SUMP-compatible logic analyzers";
      description = "A Haskell interface to SUMP-compatible logic analyzers including\nutilities for visualization of captured logic traces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.serialport)
          ];
        };
      };
    }