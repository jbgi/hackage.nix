{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "unbeliever"; version = "0.7.3.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2018 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "";
      url = "";
      synopsis = "Opinionated Haskell Interoperability";
      description = "A library to help build command-line programs, both tools and\nlonger-running daemons.\n\nUseful starting points are \"Core.Program.Execute\" and \"Core.Text.Rope\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.chronologique)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.fingertree)
          (hsPkgs.hashable)
          (hsPkgs.hourglass)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.safe-exceptions)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
          (hsPkgs.text-short)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "experiment" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronologique)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.fingertree)
            (hsPkgs.hashable)
            (hsPkgs.hourglass)
            (hsPkgs.mtl)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.safe-exceptions)
            (hsPkgs.scientific)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.text-short)
            (hsPkgs.transformers)
            (hsPkgs.unbeliever)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        "snippet" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronologique)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.fingertree)
            (hsPkgs.hashable)
            (hsPkgs.hourglass)
            (hsPkgs.mtl)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.safe-exceptions)
            (hsPkgs.scientific)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.text-short)
            (hsPkgs.transformers)
            (hsPkgs.unbeliever)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "check" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronologique)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.fingertree)
            (hsPkgs.hashable)
            (hsPkgs.hourglass)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.safe-exceptions)
            (hsPkgs.scientific)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.text-short)
            (hsPkgs.transformers)
            (hsPkgs.unbeliever)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "performance" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronologique)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.fingertree)
            (hsPkgs.gauge)
            (hsPkgs.hashable)
            (hsPkgs.hourglass)
            (hsPkgs.mtl)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.safe-exceptions)
            (hsPkgs.scientific)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.text-short)
            (hsPkgs.transformers)
            (hsPkgs.unbeliever)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }