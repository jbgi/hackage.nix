{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scalpel"; version = "0.4.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "willcoster@gmail.com";
      author = "Will Coster";
      homepage = "https://github.com/fimad/scalpel";
      url = "";
      synopsis = "A high level web scraping library for Haskell.";
      description = "Scalpel is a web scraping library inspired by libraries like Parsec and\nPerl's Web::Scraper Scalpel builds on top of TagSoup to provide a\ndeclarative and monadic interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.curl)
          (hsPkgs.data-default)
          (hsPkgs.fail)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "lib-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.scalpel)
            (hsPkgs.tagsoup)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.scalpel)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            ];
          };
        };
      };
    }