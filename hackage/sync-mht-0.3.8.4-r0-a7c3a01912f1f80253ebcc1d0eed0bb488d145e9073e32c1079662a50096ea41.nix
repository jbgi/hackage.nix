{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "sync-mht"; version = "0.3.8.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Emin Karayel <me@eminkarayel.de>";
      author = "Emin Karayel <me@eminkarayel.de>";
      homepage = "https://github.com/ekarayel/sync-mht";
      url = "https://github.com/ekarayel/sync-mht";
      synopsis = "Fast incremental file transfer using Merkle-Hash-Trees";
      description = "A command line tool that can be used to incrementally synchronize a directory hierarchy with a\nsecond one. It is using a Merkle-Hash-Tree to compare the folders, such that the synchronization\ntime and communication (round) complexity grows only logarithmically with the size of the\ndirectories (assuming the actual difference of the directories is small).\n\nThe communication happens through standard streams between parent and child processes, which can\neasily be routed through remote command execution tools.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.cryptohash)
          (hsPkgs.exceptions)
          (hsPkgs.byteable)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.bytes)
          (hsPkgs.base16-bytestring)
          (hsPkgs.cereal)
          (hsPkgs.io-streams)
          (hsPkgs.transformers)
          (hsPkgs.regex-compat)
          (hsPkgs.mtl)
          (hsPkgs.zlib)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.HUnit)
          (hsPkgs.temporary)
          ];
        };
      exes = {
        "sync-mht" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.cryptohash)
            (hsPkgs.exceptions)
            (hsPkgs.byteable)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.bytes)
            (hsPkgs.base16-bytestring)
            (hsPkgs.cereal)
            (hsPkgs.io-streams)
            (hsPkgs.transformers)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.zlib)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.HUnit)
            (hsPkgs.temporary)
            ];
          };
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.cryptohash)
            (hsPkgs.exceptions)
            (hsPkgs.byteable)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.bytes)
            (hsPkgs.base16-bytestring)
            (hsPkgs.cereal)
            (hsPkgs.io-streams)
            (hsPkgs.transformers)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.zlib)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.HUnit)
            (hsPkgs.temporary)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.temporary)
            ];
          };
        };
      };
    }