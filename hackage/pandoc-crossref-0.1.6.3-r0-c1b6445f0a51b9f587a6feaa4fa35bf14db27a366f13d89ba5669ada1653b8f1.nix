{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-crossref"; version = "0.1.6.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "root@livid.pp.ru";
      author = "Nikolay Yakimov";
      homepage = "";
      url = "";
      synopsis = "Pandoc filter for cross-references";
      description = "pandoc-crossref is a pandoc filter for numbering figures, equations, tables and cross-references to them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.pandoc)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.pandoc-types)
          (hsPkgs.yaml)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          ];
        };
      exes = {
        "pandoc-crossref" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.pandoc-types)
            (hsPkgs.yaml)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.pandoc-crossref)
            ];
          };
        };
      tests = {
        "test-pandoc-crossref" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.pandoc-types)
            (hsPkgs.yaml)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.pandoc-crossref)
            ];
          };
        };
      };
    }