{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cgi = false; test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "texmath"; version = "0.5.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion of LaTeX math formulas to MathML.";
      description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML. It supports\nbasic LaTeX and AMS extensions, and it can parse and\napply LaTeX macros.\n\nUse the @test@ flag to install a standalone executable,\n@texmath@, that reads a LaTeX formula from @stdin@ and\nwrites MathML to @stdout@.\n\nUse the @cgi@ flag to install a cgi script,\n@texmath-cgi@.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.xml)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [ (hsPkgs.base) ]);
        };
      exes = {
        "texmath" = {};
        "texmath-cgi" = {
          depends = (pkgs.lib).optionals (flags.cgi) [
            (hsPkgs.cgi)
            (hsPkgs.json)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }