{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "logging-effect-extra-file"; version = "2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/logging-effect-extra#readme";
      url = "";
      synopsis = "TH splices to augment log messages with file info";
      description = "TH splices to augment log messages with file info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.logging-effect)
          (hsPkgs.prettyprinter)
          (hsPkgs.template-haskell)
          ];
        };
      exes = {
        "log-file" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.logging-effect-extra-file)
            (hsPkgs.prettyprinter)
            ];
          };
        "log-file-and-severity" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.logging-effect-extra-file)
            (hsPkgs.prettyprinter)
            ];
          };
        };
      };
    }