{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "ghc-mod"; version = "5.4.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Daniel Gröber <dxld@darkboxed.org>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>,\nDaniel Gröber <dxld@darkboxed.org>,\nAlejandro Serrano <trupill@gmail.com>";
      homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
      url = "";
      synopsis = "Happy Haskell Programming";
      description = "ghc-mod is a backend program to enrich Haskell programming in editors. It\nstrives to offer most of the features one has come to expect from modern IDEs\nin any editor.\nghc-mod provides a library for other haskell programs to use as well as a\nstandalone program for easy editor integration. All of the fundamental\nfunctionality of the frontend program can be accessed through the library\nhowever many implementation details are hidden and if you want to\nsignificantly extend ghc-mod you should submit these changes upstream instead\nof implementing them on top of the library.\nFor more information, please see its home page.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cabal-helper)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.hlint)
          (hsPkgs.monad-journal)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.temporary)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.split)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.text)
          (hsPkgs.djinn-ghc)
          (hsPkgs.fclabels)
          (hsPkgs.extra)
          (hsPkgs.pipes)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs.convertible)) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.5") [
          (hsPkgs.random)
          (hsPkgs.ghc-prim)
          ];
        };
      exes = {
        "ghc-mod" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.mtl)
            (hsPkgs.ghc)
            (hsPkgs.ghc-mod)
            (hsPkgs.fclabels)
            ];
          };
        "ghc-modi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-time)
            ];
          };
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "spec" = {
          depends = [
            (hsPkgs.hspec)
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs.executable-path);
          };
        };
      };
    }