{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "conduit-extra"; version = "1.1.13.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Batteries included conduit: adapters for common libraries.";
      description = "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.network)
          (hsPkgs.primitive)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.streaming-commons)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring-builder)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.QuickCheck)
            (hsPkgs.stm)
            (hsPkgs.streaming-commons)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            ];
          };
        };
      benchmarks = {
        "blaze" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }