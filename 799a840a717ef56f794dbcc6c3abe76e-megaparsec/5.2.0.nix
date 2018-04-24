{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "megaparsec";
          version = "5.2.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@opmbx.org>";
        author = "Megaparsec contributors,\nPaolo Martini <paolo@nemail.it>,\nDaan Leijen <daan@microsoft.com>";
        homepage = "https://github.com/mrkkrp/megaparsec";
        url = "";
        synopsis = "Monadic parser combinators";
        description = "This is industrial-strength monadic parser combinator library. Megaparsec\nis a fork of Parsec library originally written by Daan Leijen.";
        buildType = "Simple";
      };
      components = {
        megaparsec = {
          depends  = ([
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
            hsPkgs.fail
            hsPkgs.semigroups
          ]) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) hsPkgs.tagged;
        };
        tests = {
          tests = {
            depends  = ([
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) hsPkgs.tagged;
          };
        };
        benchmarks = {
          bench-speed = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.megaparsec
            ];
          };
          bench-memory = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.megaparsec
              hsPkgs.weigh
            ];
          };
        };
      };
    }