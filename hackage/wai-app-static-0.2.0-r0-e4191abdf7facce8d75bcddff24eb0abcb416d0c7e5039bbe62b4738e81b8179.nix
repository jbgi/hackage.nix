{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { print = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-app-static"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "WAI application for static serving";
      description = "Also provides some helper functions and datatypes for use outside of WAI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.blaze-html)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.file-embed)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          ];
        };
      };
    }