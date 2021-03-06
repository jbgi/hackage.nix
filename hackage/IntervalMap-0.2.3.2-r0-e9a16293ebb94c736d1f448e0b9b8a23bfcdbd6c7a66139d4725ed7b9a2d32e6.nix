{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "IntervalMap"; version = "0.2.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 Christoph Breitkopf";
      maintainer = "Christoph Breitkopf <chbreitkopf@googlemail.com>";
      author = "Christoph Breitkopf";
      homepage = "http://www.chr-breitkopf.de/comp/IntervalMap";
      url = "";
      synopsis = "Maps from Intervals to values, with efficient search.";
      description = "A map from intervals to values, with efficient search\nfor all keys containing a point or overlapping an interval.\nSee the example code on the home page for a quick introduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.deepseq) ];
        };
      tests = {
        "TestInterval" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            ];
          };
        "TestIntervalMap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            ];
          };
        };
      benchmarks = {
        "bench-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }