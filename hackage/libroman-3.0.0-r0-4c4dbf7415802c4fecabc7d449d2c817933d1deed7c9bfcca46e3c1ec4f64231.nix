{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libroman"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Alexander Hakki";
      maintainer = "ahk@ahakki.xyz";
      author = "Alexander Hakki";
      homepage = "https://ahakki.xyz";
      url = "";
      synopsis = "Use Roman Numerals as a Numeric Datatype (sort of)";
      description = "See Readme.md, Data.Roman.Tutorial, and Haddocks on Hackage";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.split) ]; };
      tests = {
        "libroman-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.libroman)
            ];
          };
        };
      };
    }