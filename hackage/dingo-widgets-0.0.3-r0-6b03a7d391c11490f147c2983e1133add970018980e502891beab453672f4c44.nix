{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = { name = "dingo-widgets"; version = "0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Dingo Widgets";
      description = "This package contains a set of widgets for the Dingo Rich Internet Application platform.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson-native)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
          (hsPkgs.dingo-core)
          (hsPkgs.file-embed)
          (hsPkgs.fclabels)
          (hsPkgs.shakespeare-js)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      };
    }