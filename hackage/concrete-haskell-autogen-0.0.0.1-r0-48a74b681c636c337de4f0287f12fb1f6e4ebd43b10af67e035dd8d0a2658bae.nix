{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "concrete-haskell-autogen"; version = "0.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2017";
      maintainer = "tom@cs.jhu.edu";
      author = "Thomas Lippincott";
      homepage = "https://github.com/hltcoe";
      url = "";
      synopsis = "Automatically generated Thrift definitions for the Concrete data format.";
      description = "Concrete is a Thrift-based data specification designed for Natural Language Processing (NLP) applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.thrift)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      };
    }