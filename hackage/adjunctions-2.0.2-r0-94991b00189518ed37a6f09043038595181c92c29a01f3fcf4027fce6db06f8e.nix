{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "adjunctions"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/adjunctions/";
      url = "";
      synopsis = "Adjunctions";
      description = "Adjunctions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.comonad)
          (hsPkgs.contravariant)
          (hsPkgs.distributive)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.void)
          (hsPkgs.keys)
          (hsPkgs.comonad-transformers)
          (hsPkgs.representable-functors)
          ];
        };
      };
    }