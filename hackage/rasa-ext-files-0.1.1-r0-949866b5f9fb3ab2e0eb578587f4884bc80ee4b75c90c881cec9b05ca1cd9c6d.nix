{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rasa-ext-files"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext for filesystem actions";
      description = "Rasa Ext for filesystem actions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.rasa)
          (hsPkgs.rasa-ext-bufs)
          (hsPkgs.rasa-ext-status-bar)
          (hsPkgs.rasa-ext-cmd)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.yi-rope)
          ];
        };
      };
    }