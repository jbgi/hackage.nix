{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cgi = false; test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "texmath"; version = "0.2.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion of LaTeX math formulas to MathML.";
      description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML. It supports\nbasic LaTeX and AMS extensions, but not macros.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.xml)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.base)
          ];
        };
      exes = {
        "testTeXMathML" = {};
        "texmath-cgi" = {
          depends = (pkgs.lib).optionals (flags.cgi) [
            (hsPkgs.cgi)
            (hsPkgs.json)
            ];
          };
        };
      };
    }