{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghcapi = false;
      vty = true;
      gtk = true;
      pango = true;
      cocoa = true;
      testing = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "yi";
          version = "0.4.6";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "yi-devel@googlegroups.com";
        author = "AUTHORS";
        homepage = "http://haskell.org/haskellwiki/Yi";
        url = "";
        synopsis = "The Haskell-Scriptable Editor";
        description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
        buildType = "Simple";
      };
      components = {
        yi = {};
        exes = {
          yi = {
            depends  = (((((([
              hsPkgs.Cabal
              hsPkgs.Diff
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.fingertree
              hsPkgs.parsec
              hsPkgs.unix-compat
              hsPkgs.pureMD5
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.rosezipper
              hsPkgs.utf8-string
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional _flags.vty hsPkgs.vty) ++ pkgs.lib.optional _flags.gtk hsPkgs.gtk) ++ pkgs.lib.optional _flags.pango hsPkgs.gtk) ++ pkgs.lib.optionals _flags.cocoa [
              hsPkgs.HOC
              hsPkgs.HOC-AppKit
              hsPkgs.HOC-Foundation
            ]) ++ pkgs.lib.optionals _flags.ghcapi [
              hsPkgs.ghc
              hsPkgs.haskell98
              hsPkgs.ghc-paths
            ]) ++ pkgs.lib.optional _flags.testing hsPkgs.QuickCheck;
            build-tools = [ hsPkgs.alex ];
          };
        };
      };
    }