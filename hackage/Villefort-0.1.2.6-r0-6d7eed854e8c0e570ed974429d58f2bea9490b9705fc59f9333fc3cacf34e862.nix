{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Villefort"; version = "0.1.2.6"; };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Reuter";
      maintainer = "creuter@lsoc.org";
      author = "Chris Reuter";
      homepage = "https://github.com/Chrisr850/Villefort#readme";
      url = "";
      synopsis = "Villefort is a task manager and time tracker written in haskell.";
      description = "Villefort is a browser based time tracker.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.strict)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.MissingH)
          ];
        };
      exes = {
        "Villefort" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Villefort)
            (hsPkgs.scotty)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.HDBC)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.random)
            ];
          };
        };
      tests = {
        "Villefort-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Villefort)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.webdriver)
            ];
          };
        };
      };
    }