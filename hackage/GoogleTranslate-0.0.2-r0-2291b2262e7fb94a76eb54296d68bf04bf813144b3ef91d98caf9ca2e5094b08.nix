{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GoogleTranslate"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 Andy Stewart";
      maintainer = "lazycat.manatee@gmail.com";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Interface to Google Translate API";
      description = "Interface to Google Translate API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.json)
          (hsPkgs.download-curl)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.dataenc)
          (hsPkgs.text)
          ];
        };
      };
    }