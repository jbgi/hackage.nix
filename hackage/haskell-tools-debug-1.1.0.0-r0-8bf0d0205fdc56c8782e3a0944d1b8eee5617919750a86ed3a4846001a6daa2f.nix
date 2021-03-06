{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tools-debug"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Debugging Tools for Haskell-tools";
      description = "Debugging Tools for Haskell-tools";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.references)
          (hsPkgs.split)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.haskell-tools-backend-ghc)
          (hsPkgs.haskell-tools-refactor)
          (hsPkgs.haskell-tools-prettyprint)
          (hsPkgs.haskell-tools-builtin-refactorings)
          (hsPkgs.uniplate)
          (hsPkgs.classyplate)
          (hsPkgs.criterion)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "ht-debug" = {
          depends = [ (hsPkgs.base) (hsPkgs.haskell-tools-debug) ];
          };
        };
      };
    }