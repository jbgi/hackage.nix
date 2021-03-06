{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dropbox-sdk"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kannan Goundan <kannan@dropbox.com>";
      author = "Kannan Goundan <kannan@dropbox.com>";
      homepage = "http://github.com/cakoose/dropbox-sdk";
      url = "";
      synopsis = "A (very preliminary) library to access the Dropbox HTTP API.";
      description = "The Dropbox HTTP API provides ways for applications to access\nusers' Dropbox accounts programmatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
          (hsPkgs.utf8-string)
          (hsPkgs.urlencoded)
          (hsPkgs.json)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.network)
          (hsPkgs.enumerator)
          (hsPkgs.http-types)
          (hsPkgs.http-enumerator)
          (hsPkgs.blaze-builder)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.certificate)
          ];
        };
      };
    }