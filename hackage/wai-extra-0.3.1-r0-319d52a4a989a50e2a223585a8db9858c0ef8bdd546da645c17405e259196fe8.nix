{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "wai-extra"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/wai-extra";
      url = "";
      synopsis = "Provides some basic WAI handlers and middleware.";
      description = "The goal here is to provide common features without many dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.network)
          (hsPkgs.directory)
          (hsPkgs.zlib-bindings)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.transformers)
          (hsPkgs.enumerator)
          (hsPkgs.blaze-builder)
          ];
        };
      };
    }