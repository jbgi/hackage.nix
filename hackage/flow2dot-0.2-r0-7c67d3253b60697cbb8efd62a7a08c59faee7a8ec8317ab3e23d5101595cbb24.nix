{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "flow2dot"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://adept.linux.kiev.ua/repos/flow2dot";
      url = "";
      synopsis = "Generates sequence diagrams from textual descriptions";
      description = "Generates sequence diagrams from textual descriptions with help of Graphviz graph drawing tool.\nCheck out <http://adept.linux.kiev.ua/repos/flow2dot/sample.flow> (source)\nand <http://adept.linux.kiev.ua/repos/flow2dot/sample.png> (output).";
      buildType = "Custom";
      };
    components = {
      exes = {
        "flow2dot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.haskell98)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }