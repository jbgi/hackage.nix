{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fptest"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 John Pavel and 2004 IBM Corp";
      maintainer = "jrp@dial.pipex.com";
      author = "John Pavel";
      homepage = "https://github.com/jrp2014/fptest";
      url = "";
      synopsis = "IEEE754r floating point conformance tests";
      description = "=A series of floating point conformance tests for Haskell.\nCurrently implemented are:\n==QTrial\nQTrial is the floating point benchmark described in /IEEE Standard 754 for Binary Floating-Point\nArithmetic/ by Prof. W. Kahan <http://www.eecs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF>\nThis can be run with a simple @cabal run qtrial@\n==FPTest\nFPTest runs a sequence of floating point test vectors generated by IBM's\n<https://www.research.ibm.com/haifa/projects/verification/fpgen/ FPGen Floating-Point Test Generator>.\nThis is done in two ways:\n* By interpreting the tests\n* By translating the tests into a Haskell HUnit test suite script that can just be executed using\n@runhaskell@\nThe IBM test vectors are available from\n<https://www.research.ibm.com/haifa/projects/verification/fpgen/i here>.\nYou will, most likely, want the binary tests unless you have a decimal machine.\nOnly 32-bit float tests are provided (not 64-bit double ones) although FPTest supports Doubles.\nThe syntax of the test vectors can be founds\n<https://www.research.ibm.com/haifa/projects/verification/fpgen/syntax.txt here> or in Chapter 4\nof  <https://www.research.ibm.com/haifa/projects/verification/fpgen/papers/ieee-test-suite-v2.pdfs\nFloating-Point Test-Suite for IEEE>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "qtrial" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.parsec3-numbers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        "fptest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.parsec3-numbers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      tests = {
        "qtrial-quickcheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.parsec3-numbers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        "fptest-quickcheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.parsec3-numbers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.Glob) ];
          };
        "haddock" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.regex-compat) ];
          };
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        };
      };
    }