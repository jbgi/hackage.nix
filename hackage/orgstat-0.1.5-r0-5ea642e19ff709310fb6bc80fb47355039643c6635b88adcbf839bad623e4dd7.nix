{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "orgstat"; version = "0.1.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "volhovm.cs@gmail.com";
      author = "Mikhail Volkhov <volhovm.cs@gmail.com>, Zhenya Vinogradov <zhenyavinogradov@gmail.com>";
      homepage = "https://github.com/volhovM/orgstat";
      url = "";
      synopsis = "Statistics visualizer for org-mode";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.boxes)
          (hsPkgs.bytestring)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.fmt)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.optparse-simple)
          (hsPkgs.orgmode-parse)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.turtle)
          (hsPkgs.universum)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "orgstat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.formatting)
            (hsPkgs.optparse-simple)
            (hsPkgs.orgstat)
            (hsPkgs.universum)
            ];
          };
        };
      tests = {
        "orgstat-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.colour)
            (hsPkgs.hspec)
            (hsPkgs.orgstat)
            (hsPkgs.lens)
            (hsPkgs.quickcheck-text)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.universum)
            ];
          };
        };
      };
    }