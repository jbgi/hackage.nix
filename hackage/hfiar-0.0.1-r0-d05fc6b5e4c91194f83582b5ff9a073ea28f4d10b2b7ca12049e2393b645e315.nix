{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hfiar"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "http://github.com/elbrujohalcon/hfiar";
      url = "http://code.haskell.org/hfiar";
      synopsis = "Four in a Row in Haskell!!";
      description = "The classical game, implemented with wxHaskell";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hfiar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.mtl)
            (hsPkgs.eprocess)
            (hsPkgs.eprocess)
            (hsPkgs.wxcore)
            (hsPkgs.wxcore)
            (hsPkgs.wx)
            (hsPkgs.wx)
            ];
          };
        };
      };
    }