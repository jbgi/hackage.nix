{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; buildtests = false; time_gte_113 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HDBC"; version = "2.2.7.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2005-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc";
      url = "";
      synopsis = "Haskell Database Connectivity";
      description = "HDBC provides an abstraction layer between Haskell programs and SQL\nrelational databases. This lets you write database code once, in\nHaskell, and have it work with any number of backend SQL databases\n(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.mtl)
          (hsPkgs.convertible)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
            ] ++ [ (hsPkgs.time) ]
          else [
            (hsPkgs.base)
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs.base);
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) (([
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.testpack)
            (hsPkgs.mtl)
            (hsPkgs.convertible)
            (hsPkgs.utf8-string)
            ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.old-time)
              (hsPkgs.time)
              (hsPkgs.bytestring)
              (hsPkgs.containers)
              (hsPkgs.old-locale)
              ] ++ [ (hsPkgs.time) ]
            else [
              (hsPkgs.base)
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs.base));
          };
        };
      };
    }