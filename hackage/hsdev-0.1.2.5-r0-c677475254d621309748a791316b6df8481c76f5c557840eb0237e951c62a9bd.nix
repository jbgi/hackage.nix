{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsdev"; version = "0.1.2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `Voidex` Ruchkin";
      homepage = "https://github.com/mvoidex/hsdev";
      url = "";
      synopsis = "Haskell development library and tool with support of autocompletion, symbol info, go to declaration, find references etc.";
      description = "Haskell development library and tool with support of autocompletion, symbol info, go to declaration, find references, hayoo search etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-mod)
          (hsPkgs.ghc-paths)
          (hsPkgs.haddock-api)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hdocs)
          (hsPkgs.HTTP)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.regexpr)
          (hsPkgs.regex-posix)
          (hsPkgs.scientific)
          (hsPkgs.time)
          (hsPkgs.attoparsec)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
        };
      exes = {
        "hsdev" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "hsinspect" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        "hsclearimports" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "hscabal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "hshayoo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = { "test" = { depends = [ (hsPkgs.base) ]; }; };
      };
    }