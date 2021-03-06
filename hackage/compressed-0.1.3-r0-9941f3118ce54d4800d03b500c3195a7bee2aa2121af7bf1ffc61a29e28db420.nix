{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "compressed"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/compressed/";
      url = "";
      synopsis = "Compressed generators and reducers";
      description = "Compressed generators and reducers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fingertree)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.comonad)
          (hsPkgs.pointed)
          (hsPkgs.keys)
          (hsPkgs.reducers)
          ];
        };
      };
    }