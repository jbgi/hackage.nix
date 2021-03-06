{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "serverless-haskell"; version = "0.8.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "akotlyarov@seek.com.au";
      author = "";
      homepage = "https://github.com/seek-oss/serverless-haskell#readme";
      url = "";
      synopsis = "Deploying Haskell code onto AWS Lambda using Serverless";
      description = "Utilities to help process the events from AWS Lambda when deployed with the serverless-haskell plugin.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.aeson-extra)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-kinesis)
          (hsPkgs.amazonka-s3)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.iproute)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.aeson-extra)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-kinesis)
            (hsPkgs.amazonka-s3)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.http-types)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.serverless-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }