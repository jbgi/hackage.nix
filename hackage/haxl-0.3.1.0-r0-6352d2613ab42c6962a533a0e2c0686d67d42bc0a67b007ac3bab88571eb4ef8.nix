{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haxl"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-present, Facebook, Inc.";
      maintainer = "The Haxl Team <haxl-team@fb.com>";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebook/Haxl";
      url = "";
      synopsis = "A Haskell library for efficient, concurrent,\nand concise data access.";
      description = "Haxl is a library and EDSL for efficient scheduling of concurrent data\naccesses with a concise applicative API.\n\nTo use Haxl, you need to implement one or more /data sources/, which\nprovide the means for accessing remote data or other I/O that you\nwant to perform using Haxl.\n\nHaxl provides two top-level modules:\n\n* /Data-source implementations/ import \"Haxl.Core\",\n\n* /Client code/ import your data sources and \"Haxl.Prelude\", or some\nother client-level API that you provide.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HUnit)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "monadbench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haxl)
            (hsPkgs.hashable)
            (hsPkgs.time)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.haxl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }