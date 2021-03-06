{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-devel"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "njagi@urbanslug.com";
      author = "Njagi Mwaniki";
      homepage = "https://github.com/urbanslug/wai-devel";
      url = "";
      synopsis = "A web server for the development of WAI compliant web applications.";
      description = "A development server for WAI applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal-ide-backend)
          (hsPkgs.Glob)
          (hsPkgs.MissingH)
          (hsPkgs.array)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.ghc)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.http-types)
          (hsPkgs.ide-backend)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.shakespeare)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.file-embed)
          (hsPkgs.websockets)
          ];
        };
      exes = {
        "wai-devel" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal-ide-backend)
            (hsPkgs.Glob)
            (hsPkgs.MissingH)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.ghc)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-reverse-proxy)
            (hsPkgs.http-types)
            (hsPkgs.ide-backend)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.shakespeare)
            (hsPkgs.stm)
            (hsPkgs.streaming-commons)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-devel)
            (hsPkgs.warp)
            (hsPkgs.file-embed)
            (hsPkgs.websockets)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.wai-devel)
            ];
          };
        };
      };
    }