{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haste-compiler"; version = "0.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad <anton@ekblad.cc>";
      homepage = "http://github.com/valderman/haste-compiler";
      url = "";
      synopsis = "Haskell To ECMAScript compiler";
      description = "This package provides a featureful compiler from Haskell to\nJavascript. It generates small, fast code, makes use of\nstandard Haskell libraries, integrates with Cabal, supports\nmost GHC extensions and works on Windows, Linux and OSX.\nBug reports are highly appreciated.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.shellmate)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc)
          (hsPkgs.directory)
          ] ++ (if system.isWindows
          then [ (hsPkgs.websockets) (hsPkgs.network) (hsPkgs.network-uri) ]
          else [ (hsPkgs.websockets) ]);
        };
      exes = {
        "haste-boot" = {
          depends = [
            (hsPkgs.ghc)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tar)
            (hsPkgs.bzlib)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.HTTP)
            (hsPkgs.shellmate)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc)
            (hsPkgs.directory)
            ];
          };
        "hastec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.ghc)
            (hsPkgs.mtl)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.blaze-builder)
            (hsPkgs.array)
            (hsPkgs.ghc-paths)
            (hsPkgs.random)
            (hsPkgs.system-fileio)
            (hsPkgs.shellmate)
            (hsPkgs.either)
            (hsPkgs.directory)
            ];
          };
        "haste-inst" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shellmate)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc)
            (hsPkgs.directory)
            ];
          };
        "haste-pkg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shellmate)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc)
            (hsPkgs.process)
            (hsPkgs.directory)
            ];
          };
        "haste-install-his" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shellmate)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc)
            (hsPkgs.directory)
            ];
          };
        "haste-copy-pkg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shellmate)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }