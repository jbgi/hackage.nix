{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
      curses = true;
      old-locale = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hledger";
          version = "0.25";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "The main command-line interface for the hledger accounting tool.";
        description = "hledger is a library and set of user tools for working\nwith financial data (or anything that can be tracked in a\ndouble-entry accounting ledger.) It is a haskell port and\nfriendly fork of John Wiegley's Ledger. hledger provides\ncommand-line, curses and web interfaces, and aims to be a\nreliable, practical tool for daily use.";
        buildType = "Simple";
      };
      components = {
        hledger = {
          depends  = ((([
            hsPkgs.hledger-lib
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.cmdargs
            hsPkgs.csv
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.regex-tdfa
            hsPkgs.regexpr
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.text
            hsPkgs.tabular
            hsPkgs.utf8-string
            hsPkgs.wizards
          ] ++ (if compiler.isGhc && compiler.version.ge "7.10"
            then [ hsPkgs.shakespeare ]
            else [
              hsPkgs.shakespeare
              hsPkgs.shakespeare-text
            ])) ++ (if _flags.old-locale
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.time
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") hsPkgs.pretty-show) ++ pkgs.lib.optional (!system.isWindows && _flags.curses) hsPkgs.terminfo;
        };
        exes = {
          hledger = {
            depends  = ([
              hsPkgs.hledger-lib
              hsPkgs.hledger
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.cmdargs
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regex-tdfa
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.shakespeare-text
              hsPkgs.shakespeare
              hsPkgs.split
              hsPkgs.tabular
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.wizards
            ] ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [
                hsPkgs.time
              ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") hsPkgs.pretty-show;
          };
        };
        tests = {
          tests = {
            depends  = ([
              hsPkgs.hledger-lib
              hsPkgs.hledger
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regex-tdfa
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.shakespeare-text
              hsPkgs.shakespeare
              hsPkgs.split
              hsPkgs.tabular
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.wizards
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.4") hsPkgs.pretty-show) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.hledger-lib
              hsPkgs.hledger
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.html
              hsPkgs.tabular
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
            ] ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [ hsPkgs.time ]);
          };
        };
      };
    }