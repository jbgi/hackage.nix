{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddc-build"; version = "0.4.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler build framework.";
      description = "Disciplined Disciple Compiler build framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.ddc-base)
          (hsPkgs.ddc-core)
          (hsPkgs.ddc-core-eval)
          (hsPkgs.ddc-core-simpl)
          (hsPkgs.ddc-core-salt)
          (hsPkgs.ddc-core-llvm)
          (hsPkgs.ddc-core-flow)
          (hsPkgs.ddc-core-tetra)
          (hsPkgs.ddc-source-tetra)
          ];
        };
      };
    }