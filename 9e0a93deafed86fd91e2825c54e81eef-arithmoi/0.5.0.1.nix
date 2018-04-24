{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      check-bounds = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arithmoi";
          version = "0.5.0.1";
        };
        license = "MIT";
        copyright = "(c) 2011 Daniel Fischer, 2016-2017 Andrew Lelechenko, Carter Schonwald";
        maintainer = "Carter Schonwald  carter at wellposed dot com,\nAndrew Lelechenko andrew dot lelechenko at gmail dot com";
        author = "Daniel Fischer";
        homepage = "https://github.com/cartazio/arithmoi";
        url = "";
        synopsis = "Efficient basic number-theoretic functions.";
        description = "A library of basic functionality needed for\nnumber-theoretic calculations. The aim of this library\nis to provide efficient implementations of the functions.\nPrimes and related things (totients, factorisation),\npowers (integer roots and tests, modular exponentiation).";
        buildType = "Simple";
      };
      components = {
        arithmoi = {
          depends  = ([
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ghc-prim
            hsPkgs.integer-gmp
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.exact-pi
            hsPkgs.integer-logarithms
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.nats) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") hsPkgs.semigroups;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.arithmoi
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.transformers
              hsPkgs.integer-gmp
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.nats;
          };
        };
        benchmarks = {
          criterion = {
            depends  = [
              hsPkgs.base
              hsPkgs.arithmoi
              hsPkgs.criterion
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.integer-logarithms
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.nats;
          };
        };
      };
    }