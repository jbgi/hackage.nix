{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "djembe"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Reed Rosenbluth";
      maintainer = "Reed.Rosenbluth@gmail.com";
      author = "Reed Rosenbluth";
      homepage = "";
      url = "";
      synopsis = "Hit drums with haskell";
      description = "A simple DSL for composing drum beats in haskell.\nDjembe uses the system MIDI device to play these beats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.hmidi)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.hspec)
          (hsPkgs.mtl)
          ];
        };
      tests = {
        "djembe-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.djembe)
            ];
          };
        };
      };
    }