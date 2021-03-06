{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nice-html"; version = "0.4.1"; };
      license = "MIT";
      copyright = "2017 Mike Ledger";
      maintainer = "mike@quasimal.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/nice-html#readme";
      url = "";
      synopsis = "A fast and nice HTML templating library with distinct compilation/rendering phases.";
      description = "A fast and nice HTML templating library with distinct compilation/rendering phases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-markup)
          (hsPkgs.recursion-schemes)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.free)
          (hsPkgs.bifunctors)
          (hsPkgs.data-default-class)
          (hsPkgs.lens)
          ];
        };
      benchmarks = {
        "mem" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.blaze-markup)
            (hsPkgs.blaze-html)
            (hsPkgs.lucid)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.nice-html)
            (hsPkgs.weigh)
            (hsPkgs.pretty-show)
            (hsPkgs.transformers)
            ];
          };
        "mem-prof" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.blaze-markup)
            (hsPkgs.blaze-html)
            (hsPkgs.lucid)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.nice-html)
            (hsPkgs.weigh)
            (hsPkgs.pretty-show)
            (hsPkgs.transformers)
            ];
          };
        "perf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.blaze-markup)
            (hsPkgs.blaze-html)
            (hsPkgs.lucid)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.nice-html)
            (hsPkgs.weigh)
            (hsPkgs.pretty-show)
            (hsPkgs.transformers)
            (hsPkgs.shakespeare)
            (hsPkgs.type-of-html)
            ];
          };
        };
      };
    }