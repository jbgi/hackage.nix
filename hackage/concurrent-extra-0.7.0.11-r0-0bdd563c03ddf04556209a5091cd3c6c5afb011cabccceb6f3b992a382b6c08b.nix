{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "concurrent-extra"; version = "0.7.0.11"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2012 Bas van Dijk & Roel van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      homepage = "https://github.com/basvandijk/concurrent-extra";
      url = "";
      synopsis = "Extra concurrency primitives";
      description = "The @concurrent-extra@ package offers among other things the\nfollowing selection of synchronisation primitives:\n\n* @Broadcast@: Wake multiple threads by broadcasting a value.\n\n* @Event@: Wake multiple threads by signalling an event.\n\n* @Lock@: Enforce exclusive access to a resource. Also known as a\nbinary semaphore or mutex. The package additionally provides an\nalternative that works in the @STM@ monad.\n\n* @RLock@: A lock which can be acquired multiple times by the same\nthread. Also known as a reentrant mutex.\n\n* @ReadWriteLock@: Multiple-reader, single-writer locks. Used to\nprotect shared resources which may be concurrently read, but only\nsequentially written.\n\n* @ReadWriteVar@: Concurrent read, sequential write variables.\n\nPlease consult the API documentation of the individual modules for\nmore detailed information.\n\nThis package was inspired by the concurrency libraries of Java and\nPython.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.stm) (hsPkgs.unbounded-delays) ];
        };
      tests = {
        "test-concurrent-extra" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.unbounded-delays)
            (hsPkgs.HUnit)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.async)
            ];
          };
        };
      };
    }