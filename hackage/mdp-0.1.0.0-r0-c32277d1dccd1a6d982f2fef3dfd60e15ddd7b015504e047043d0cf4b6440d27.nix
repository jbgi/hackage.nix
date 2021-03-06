{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mdp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "prs233@cornell.edu\ncopyright:          Copyright (c) 2015-2016 Patrick Steele";
      author = "Patrick Steele";
      homepage = "";
      url = "";
      synopsis = "Tools for solving Markov Decision Processes.";
      description = "A library for formulating and solving Markov decision problems.\nWe currently only solve infinite horizon problems. We handle\ndiscounted and undiscounted problems, and can solve continuous- and\ndiscrete-time problems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.vector) ];
        };
      exes = {
        "ex-3-1" = {
          depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.vector) ];
          };
        "ex-3-1-relative" = {
          depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.vector) ];
          };
        "ex-3-2" = {
          depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.vector) ];
          };
        "mm1" = {
          depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.vector) ];
          };
        };
      tests = {
        "TestMain" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }