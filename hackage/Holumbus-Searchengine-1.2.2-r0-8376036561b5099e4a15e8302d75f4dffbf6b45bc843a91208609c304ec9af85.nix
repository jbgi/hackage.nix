{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Holumbus-Searchengine"; version = "1.2.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2007 - 2012 Uwe Schmidt, Sebastian M. Gauck and Timo B. Kranz";
      maintainer = "Timo B. Huebel <tbh@holumbus.org>, Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Sebastian M. Gauck, Timo B. Huebel, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "A search and indexing engine.";
      description = "The Holumbus-Searchengine library provides a document indexer\nand crawler to build indexes over document collections\nas well as a sophisticated query interface for these indexes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.directory)
          (hsPkgs.enummapset)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.hxt)
          (hsPkgs.hxt-cache)
          (hsPkgs.hxt-curl)
          (hsPkgs.hxt-regex-xmlschema)
          (hsPkgs.hxt-unicode)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.unix)
          ] ++ [ (hsPkgs.containers) (hsPkgs.deepseq) ];
        };
      };
    }