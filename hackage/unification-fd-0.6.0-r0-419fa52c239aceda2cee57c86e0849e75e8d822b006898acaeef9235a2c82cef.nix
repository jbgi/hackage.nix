{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "unification-fd"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007--2012 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Simple generic unification algorithms.";
      description = "Simple generic unification algorithms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([ (hsPkgs.logict) (hsPkgs.base) (hsPkgs.mtl) ] ++ [
          (hsPkgs.base)
          ]) ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.containers) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }