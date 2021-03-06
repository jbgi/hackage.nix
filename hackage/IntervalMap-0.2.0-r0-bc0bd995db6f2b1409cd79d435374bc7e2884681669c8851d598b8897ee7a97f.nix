{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "IntervalMap"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 Christoph Breitkopf";
      maintainer = "Christoph Breitkopf <chbreitkopf@googlemail.com>";
      author = "Christoph Breitkopf";
      homepage = "http://www.chr-breitkopf.de/comp/IntervalMap";
      url = "";
      synopsis = "Maps from Intervals to values, with efficient search.";
      description = "A map from intervals to values, with efficient search\nfor all keys containing a point or overlapping an interval.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.deepseq) ];
        };
      tests = {
        "TestInterval" = {
          depends = [
            (hsPkgs.IntervalMap)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            ];
          };
        "TestIntervalMap" = {
          depends = [
            (hsPkgs.IntervalMap)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
            ];
          };
        };
      };
    }