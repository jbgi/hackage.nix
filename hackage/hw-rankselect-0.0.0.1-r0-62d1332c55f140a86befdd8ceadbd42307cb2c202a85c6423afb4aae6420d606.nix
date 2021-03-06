{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-rankselect"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-rankselect#readme";
      url = "";
      synopsis = "Conduits for tokenizing streams.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.lens)
          (hsPkgs.mmap)
          (hsPkgs.mono-traversable)
          (hsPkgs.parsec)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.word8)
          ];
        };
      exes = {
        "hw-rankselect-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-diagnostics)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.mmap)
            (hsPkgs.resourcet)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "hw-rankselect-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.mmap)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.mmap)
            (hsPkgs.resourcet)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }