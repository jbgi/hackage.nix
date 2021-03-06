{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "process-streaming"; version = "0.5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz Carrete";
      homepage = "";
      url = "";
      synopsis = "Streaming interface to system processes.";
      description = "Concurrent, streaming access to the input and outputs of system processes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.bifunctors)
          (hsPkgs.async)
          (hsPkgs.process)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-text)
          (hsPkgs.text)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-parse)
          (hsPkgs.exceptions)
          (hsPkgs.void)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.free)
            (hsPkgs.bifunctors)
            (hsPkgs.async)
            (hsPkgs.process)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-text)
            (hsPkgs.text)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-parse)
            (hsPkgs.exceptions)
            (hsPkgs.void)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.process-streaming)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.attoparsec)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.pipes-group)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }