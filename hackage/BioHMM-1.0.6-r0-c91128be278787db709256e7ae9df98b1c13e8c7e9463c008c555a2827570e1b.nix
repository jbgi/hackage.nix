{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "BioHMM"; version = "1.0.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for Hidden Markov Models in HMMER3 format.";
      description = "Libary containing parsing and visualisation functions and datastructures for Hidden Markov Models in HMMER3 format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.diagrams-lib)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.ParsecTools)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.filepath)
          (hsPkgs.colour)
          (hsPkgs.directory)
          (hsPkgs.either-unwrap)
          (hsPkgs.SVGFonts)
          (hsPkgs.StockholmAlignment)
          ];
        };
      };
    }