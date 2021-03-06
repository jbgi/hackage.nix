{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tests = false; benchmark = false; splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "edit-distance"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/edit-distance";
      url = "";
      synopsis = "Levenshtein and restricted Damerau-Levenshtein edit distances";
      description = "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.containers)
            ]
          else [ (hsPkgs.base) ];
        };
      exes = {
        "edit-distance-tests" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) ([
            (hsPkgs.test-framework)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck)
            ] ++ (if flags.splitbase
            then [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.random) ]
            else [ (hsPkgs.base) ]));
          };
        "edit-distance-benchmark" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmark)) (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.random)
              (hsPkgs.old-time)
              (hsPkgs.process)
              (hsPkgs.parallel)
              (hsPkgs.unix)
              ]
            else [ (hsPkgs.base) (hsPkgs.parallel) (hsPkgs.unix) ]);
          };
        };
      };
    }