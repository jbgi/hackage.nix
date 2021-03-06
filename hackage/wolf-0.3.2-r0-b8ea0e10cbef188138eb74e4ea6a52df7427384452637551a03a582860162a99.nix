{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "wolf"; version = "0.3.2"; };
      license = "MIT";
      copyright = "Copyright (C) 2015-2016 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/wolf";
      url = "";
      synopsis = "Amazon Simple Workflow Service Wrapper.";
      description = "Wolf is a wrapper around Amazon Simple Workflow Service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-swf)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filemanip)
          (hsPkgs.lifted-async)
          (hsPkgs.monad-control)
          (hsPkgs.optparse-applicative)
          (hsPkgs.preamble)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "wolf-actor" = {
          depends = [ (hsPkgs.base) (hsPkgs.wolf) (hsPkgs.optparse-generic) ];
          };
        "wolf-decider" = {
          depends = [ (hsPkgs.base) (hsPkgs.wolf) (hsPkgs.optparse-generic) ];
          };
        "shake-wolf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.directory)
            (hsPkgs.shake)
            ];
          };
        };
      };
    }