{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pkgconfig = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "cmark-gfm"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015--17 John MacFarlane, (C) 2017 Ashe Connor";
      maintainer = "kivikakk@github.com";
      author = "Ashe Connor";
      homepage = "https://github.com/kivikakk/cmark-gfm-hs";
      url = "";
      synopsis = "Fast, accurate GitHub Flavored Markdown parser and renderer";
      description = "This package provides Haskell bindings for\n<https://github.com/github/cmark libcmark-gfm>, the reference\nparser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully\nspecified variant of Markdown. It includes sources for\nlibcmark-gfm (0.28.0) and does not require prior installation of the\nC library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
        libs = (pkgs.lib).optionals (flags.pkgconfig) [
          (pkgs."cmark-gfm")
          (pkgs."cmark-gfmextensions")
          ];
        };
      tests = {
        "test-cmark-gfm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmark-gfm)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            ];
          };
        };
      benchmarks = {
        "bench-cmark-gfm" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.cmark-gfm)
            (hsPkgs.criterion)
            (hsPkgs.sundown)
            (hsPkgs.cheapskate)
            (hsPkgs.markdown)
            (hsPkgs.discount)
            (hsPkgs.blaze-html)
            ];
          };
        };
      };
    }