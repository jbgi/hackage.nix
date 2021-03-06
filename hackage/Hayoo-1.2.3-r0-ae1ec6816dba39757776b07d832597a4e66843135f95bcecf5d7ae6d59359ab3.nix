{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hayoosnap4 = true; hashedindex = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Hayoo"; version = "1.2.3"; };
      license = "MIT";
      copyright = "Copyright (c) 2007 - 2012 Uwe Schmidt, Sebastian M. Gauck and Timo B. Kranz";
      maintainer = "Timo B. Kranz <tbh@holumbus.org>, Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Sebastian M. Gauck, Timo B. Kranz, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "The Hayoo! search engine for Haskell API search on hackage";
      description = "The Hayoo! search engine based no the Holumbus framework provides a document indexer\nand a crawler to build indexes over Haddock generated API documentation and packages\nas well as a query interface for these indexes.\n\nChanges from 1.2.2: Optional use of new HashedIndex with DocIds generated by a hash function";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hayooIndexer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.enummapset)
            (hsPkgs.filepath)
            (hsPkgs.Holumbus-Searchengine)
            (hsPkgs.hxt)
            (hsPkgs.hxt-cache)
            (hsPkgs.hxt-charproperties)
            (hsPkgs.hxt-curl)
            (hsPkgs.hxt-http)
            (hsPkgs.hxt-regex-xmlschema)
            (hsPkgs.hxt-xpath)
            (hsPkgs.network)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            ] ++ [ (hsPkgs.containers) (hsPkgs.deepseq) ];
          };
        "hayooSnap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Holumbus-Searchengine)
            (hsPkgs.hxt)
            (hsPkgs.hxt-unicode)
            (hsPkgs.json)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.xhtml-combinators)
            ] ++ (if flags.hayoosnap4
            then [
              (hsPkgs.base)
              (hsPkgs.snap)
              (hsPkgs.snap-core)
              (hsPkgs.snap-server)
              ]
            else [
              (hsPkgs.containers)
              (hsPkgs.data-lens)
              (hsPkgs.data-lens-template)
              (hsPkgs.filepath)
              (hsPkgs.heist)
              (hsPkgs.snap)
              (hsPkgs.snap-core)
              (hsPkgs.snap-server)
              ]);
          };
        };
      };
    }