{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iridium"; version = "0.1.5.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/iridium";
      url = "";
      synopsis = "Automated Local Cabal Package Testing and Uploading";
      description = "This executable aims to automate several typical steps when\nuploading a new package version to hackage.\n\nSteps currently include:\n\n* Compilation and running tests using multiple compiler versions.\n\n* Checking that the changelog mentions the latest version.\n\n* Checking that the upper bounds of dependencies\nare up-to-date by making use of stackage snapshots.\n\n* [git] Pushing and tagging the version to the commit.\n\n* Uploading of both the package itself and the documentation.\n\nThe program is configurable using a per-project .yaml file.\n\nSee the README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.yaml)
          (hsPkgs.turtle)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.system-filepath)
          (hsPkgs.unordered-containers)
          (hsPkgs.multistate)
          (hsPkgs.Cabal)
          (hsPkgs.http-conduit)
          (hsPkgs.xmlhtml)
          (hsPkgs.foldl)
          (hsPkgs.bytestring)
          (hsPkgs.tagged)
          (hsPkgs.extra)
          (hsPkgs.process)
          (hsPkgs.vector)
          (hsPkgs.ansi-terminal)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.split)
          ];
        };
      exes = {
        "iridium" = {
          depends = [
            (hsPkgs.iridium)
            (hsPkgs.base)
            (hsPkgs.yaml)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.multistate)
            (hsPkgs.extra)
            (hsPkgs.text)
            ];
          };
        };
      };
    }