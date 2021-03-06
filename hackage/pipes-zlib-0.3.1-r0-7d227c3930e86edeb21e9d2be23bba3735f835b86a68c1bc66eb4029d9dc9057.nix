{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pipes-zlib"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Paolo Capriotti 2012,\nRenzo Carbonara 2013-2014";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara, Paolo Capriotti";
      homepage = "https://github.com/k0001/pipes-zlib";
      url = "";
      synopsis = "Zlib compression and decompression for Pipes streams";
      description = "Zlib compression and decompression for Pipes streams";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.pipes)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.zlib-bindings)
          ];
        };
      };
    }