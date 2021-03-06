{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distributed-fork-aws-lambda";
        version = "0.0.1.1";
        };
      license = "BSD-3-Clause";
      copyright = "Utku Demir";
      maintainer = "me@utdemir.com";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/distributed-fork";
      url = "";
      synopsis = "AWS Lambda backend for distributed-fork.";
      description = "<https://aws.amazon.com/lambda AWS Lambda> backend for <http://hackage.haskell.org/package/distributed-fork distributed-fork>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.distributed-fork)
          (hsPkgs.SHA)
          (hsPkgs.aeson)
          (hsPkgs.aeson-qq)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-cloudformation)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-lambda)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-sqs)
          (hsPkgs.async)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.interpolate)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stratosphere)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.typed-process)
          (hsPkgs.unordered-containers)
          (hsPkgs.zip-archive)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-fork)
            (hsPkgs.distributed-fork-aws-lambda)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            ];
          };
        };
      };
    }