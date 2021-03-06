{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; tests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "test-framework"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/test-framework";
      url = "";
      synopsis = "Framework for running and organising tests, with HUnit and QuickCheck support";
      description = "Allows tests such as QuickCheck properties and HUnit test cases to be assembled into test groups, run in\nparallel (but reported in deterministic order, to aid diff interpretation) and filtered and controlled by\ncommand line options. All of this comes with colored test output, progress reporting and test statistics output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.regex-posix)
          ] ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.random) (hsPkgs.containers) ]
          else [ (hsPkgs.base) ]);
        };
      exes = {
        "test-framework-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.regex-posix)
            ] ++ (if flags.splitbase
            then [ (hsPkgs.base) (hsPkgs.random) (hsPkgs.containers) ]
            else [ (hsPkgs.base) ]);
          };
        };
      };
    }