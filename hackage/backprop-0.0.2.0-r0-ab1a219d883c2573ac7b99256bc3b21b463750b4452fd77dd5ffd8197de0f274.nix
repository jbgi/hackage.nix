{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "backprop"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2017";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/backprop";
      url = "";
      synopsis = "Heterogeneous, type-safe automatic backpropagation in Haskell";
      description = "See <https://github.com/mstksg/backprop#readme README.md>\n\nAt the moment, this project is in pre-alpha, and is\npublished and put up on Hackage with 100% documentation\ncoverage as a call for comments and thoughts.  See\n<https://github.com/mstksg/backprop#todo TODO.md> section\nin the README for more information on what's missing and\npotential avenues for contribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.generics-sop)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.microlens-th)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.reflection)
          (hsPkgs.tagged)
          (hsPkgs.transformers-base)
          (hsPkgs.type-combinators)
          ];
        };
      exes = {
        "backprop-monotest" = {
          depends = [ (hsPkgs.base) (hsPkgs.backprop) ];
          };
        "backprop-neuraltest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ad)
            (hsPkgs.backprop)
            (hsPkgs.generics-sop)
            (hsPkgs.hmatrix)
            (hsPkgs.mwc-random)
            (hsPkgs.primitive)
            (hsPkgs.singletons)
            (hsPkgs.type-combinators)
            ];
          };
        "backprop-mnist" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.backprop)
            (hsPkgs.bifunctors)
            (hsPkgs.deepseq)
            (hsPkgs.generics-sop)
            (hsPkgs.hmatrix)
            (hsPkgs.mnist-idx)
            (hsPkgs.mwc-random)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "backprop-mnist-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.backprop)
            (hsPkgs.bifunctors)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.generics-sop)
            (hsPkgs.hmatrix)
            (hsPkgs.mnist-idx)
            (hsPkgs.mwc-random)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.type-combinators)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }