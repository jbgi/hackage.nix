{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hspec"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Trystan Spangler";
      maintainer = "trystan.s@comcast.net";
      author = "Trystan Spangler";
      homepage = "http://hspec.github.com/";
      url = "";
      synopsis = "Behavior Driven Development for Haskell";
      description = "Behavior Driven Development for Haskell\n\nHspec is roughly based on the Ruby library RSpec. However,\nHspec is just a framework for running HUnit and QuickCheck\ntests. Compared to other options, it provides a much nicer\nsyntax that makes tests very easy to read.\n\nRead the introductory documentation: <http://hspec.github.com/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.silently)
          (hsPkgs.ansi-terminal)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.silently)
            (hsPkgs.ansi-terminal)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }