{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { minimal = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "raft"; version = "0.3.11.0"; };
      license = "MIT";
      copyright = "(c) 2005-17 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/raft";
      url = "https://bitbucket.org/functionally/raft/downloads/raft-0.3.7.2.tar.gz";
      synopsis = "Miscellaneous Haskell utilities for data structures and data manipulation.";
      description = "This Haskell library contains miscellaneous data structures and data manipulation functions for general uses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tostring)
          ] ++ (pkgs.lib).optionals (!flags.minimal) [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.cereal)
          (hsPkgs.parallel)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.zlib)
          ];
        };
      };
    }