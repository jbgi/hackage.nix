{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "SciFlow"; version = "0.4.1"; };
      license = "MIT";
      copyright = "(c) 2016 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "SciFlow is to help programmers design complex workflows\nwith ease.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.shelly)
          (hsPkgs.split)
          (hsPkgs.th-lift)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.yaml)
          ];
        };
      };
    }