{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "trifecta"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/trifecta/";
      url = "";
      synopsis = "Parser combinators with slicing and diagnostic support";
      description = "Parser combinators with slicing and diagnostic support";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.intern)
          (hsPkgs.hashable)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.fingertree)
          (hsPkgs.reducers)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.semigroupoids)
          (hsPkgs.parallel)
          (hsPkgs.transformers)
          (hsPkgs.wl-pprint-extras)
          ];
        };
      };
    }