{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "serokell-util"; version = "0.10.0"; };
      license = "MIT";
      copyright = "2016-2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell";
      homepage = "https://github.com/serokell/serokell-util";
      url = "";
      synopsis = "General-purpose functions by Serokell";
      description = "Serokell-util is a library consisting of functions, which\nare not included in standard libraries, but are useful for\nmultiple projects. This library was created when it was\nfound that in new projects we need to use some utility\nfunctions from existing projects and don't want to\ncopy-paste them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.fmt)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.mtl)
          (hsPkgs.o-clock)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift-instances)
          (hsPkgs.transformers)
          (hsPkgs.universum)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "serokell-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.formatting)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.scientific)
            (hsPkgs.serokell-util)
            (hsPkgs.universum)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }