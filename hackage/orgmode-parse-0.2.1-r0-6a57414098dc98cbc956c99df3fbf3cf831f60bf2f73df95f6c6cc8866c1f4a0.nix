{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "orgmode-parse"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parnell Springmeyer <parnell@digitalmentat.com>";
      author = "Parnell Springmeyer <parnell@digitalmentat.com>";
      homepage = "";
      url = "";
      synopsis = "A collection of Attoparsec combinators for parsing org-mode\nflavored documents.";
      description = "<<https://travis-ci.org/ixmatus/orgmode-parse.svg?branch=master>>\n\n`orgmode-parse` is a parsing library for the org-mode flavor of\ndocument markup.\n\nThe provided Attoparsec combinators parse the human-readable and\ntextual representation into a simple AST for storage or output to\nanother format (HTML? Markdown?).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.free)
          (hsPkgs.hashable)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.orgmode-parse)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.free)
            (hsPkgs.hashable)
            (hsPkgs.old-locale)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.unordered-containers)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.neat-interpolation)
            ];
          };
        };
      };
    }