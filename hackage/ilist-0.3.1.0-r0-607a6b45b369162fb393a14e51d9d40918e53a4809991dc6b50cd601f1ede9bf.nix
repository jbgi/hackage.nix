{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ilist"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/ilist";
      url = "";
      synopsis = "Optimised list functions for doing index-related things";
      description = "Optimised list functions for doing index-related things. They're faster than common idioms in all cases, they avoid <https://ghc.haskell.org/trac/ghc/ticket/12620 space leaks>, and sometimes they fuse better as well.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.ilist)
            (hsPkgs.transformers)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ilist)
            (hsPkgs.lens)
            (hsPkgs.loop)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }