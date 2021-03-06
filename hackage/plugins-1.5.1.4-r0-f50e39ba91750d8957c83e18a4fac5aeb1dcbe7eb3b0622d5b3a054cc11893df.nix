{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "plugins"; version = "1.5.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart 2004..2010";
      homepage = "http://code.haskell.org/~dons/code/hs-plugins";
      url = "";
      synopsis = "Dynamic linking for Haskell and C objects";
      description = "Dynamic linking and runtime evaluation of Haskell,\nand C, including dependency chasing and package resolution.\n\nDescribed in the papers:\n* /Plugging Haskell In/, <http://www.cse.unsw.edu.au/~dons/papers/PSSC04.html>\n* /Dynamic Applications from the Ground Up/, <http://www.cse.unsw.edu.au/~dons/papers/SC05.html>\n* /Dynamic Extension of Typed Functional Languages/.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.haskell-src)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.ghc)
          (hsPkgs.ghc-prim)
          ];
        };
      };
    }