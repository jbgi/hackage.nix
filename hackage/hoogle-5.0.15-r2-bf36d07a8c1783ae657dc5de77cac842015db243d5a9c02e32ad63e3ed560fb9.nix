{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hoogle"; version = "5.0.15"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2004-2017";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://hoogle.haskell.org/";
      url = "";
      synopsis = "Haskell API Search";
      description = "Hoogle is a Haskell API search engine, which allows you to\nsearch many standard Haskell libraries by either function name,\nor by approximate type signature.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.old-locale)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.js-flot)
          (hsPkgs.js-jquery)
          (hsPkgs.mmap)
          (hsPkgs.process-extras)
          (hsPkgs.resourcet)
          (hsPkgs.storable-tuple)
          (hsPkgs.tar)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-logger)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.zlib)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        };
      exes = { "hoogle" = { depends = [ (hsPkgs.base) (hsPkgs.hoogle) ]; }; };
      };
    }