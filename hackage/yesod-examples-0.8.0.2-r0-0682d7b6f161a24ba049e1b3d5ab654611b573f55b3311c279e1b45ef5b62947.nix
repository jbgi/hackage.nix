{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-examples"; version = "0.8.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Example programs using the Yesod Web Framework.";
      description = "These are the same examples and tutorials found on the documentation site.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "blog" = { depends = [ (hsPkgs.base) (hsPkgs.yesod) ]; };
        "ajax" = { depends = [ (hsPkgs.yesod-static) ]; };
        "file-echo" = { depends = [ (hsPkgs.text) ]; };
        "pretty-yaml" = {
          depends = [
            (hsPkgs.data-object-yaml)
            (hsPkgs.data-object)
            (hsPkgs.bytestring)
            ];
          };
        "i18n" = {};
        "session" = {};
        "widgets" = { depends = [ (hsPkgs.yesod-form) ]; };
        "generalized-hamlet" = {};
        "form" = {};
        "persistent-synopsis" = {
          depends = [
            (hsPkgs.transformers)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            ];
          };
        "hamlet-synopsis" = { depends = [ (hsPkgs.hamlet) ]; };
        "chat" = { depends = [ (hsPkgs.stm) ]; };
        };
      };
    }