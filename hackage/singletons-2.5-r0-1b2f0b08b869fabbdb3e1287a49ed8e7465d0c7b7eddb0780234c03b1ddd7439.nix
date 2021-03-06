{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "singletons"; version = "2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Richard Eisenberg <rae@cs.brynmawr.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      homepage = "http://www.github.com/goldfirere/singletons";
      url = "";
      synopsis = "A framework for generating singleton types";
      description = "This library generates singleton types, promoted functions, and singleton\nfunctions using Template Haskell. It is useful for programmers who wish\nto use dependently typed programming techniques. The library was originally\npresented in /Dependently Typed Programming with Singletons/, published\nat the Haskell Symposium, 2012.\n(<https://cs.brynmawr.edu/~rae/papers/2012/singletons/paper.pdf>)\nVersion 1.0 and onwards works a lot harder to promote functions. See the\npaper published at Haskell Symposium, 2014:\n<https://cs.brynmawr.edu/~rae/papers/2014/promotion/promotion.pdf>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.ghc-boot-th)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.th-desugar)
          (hsPkgs.pretty)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "singletons-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.singletons)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            ];
          };
        };
      };
    }