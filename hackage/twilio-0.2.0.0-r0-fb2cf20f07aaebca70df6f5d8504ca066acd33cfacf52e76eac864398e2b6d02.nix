{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "twilio"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "markandrusroberts@gmail.com";
      author = "Mark Andrus Roberts";
      homepage = "https://github.com/markandrus/twilio-haskell";
      url = "";
      synopsis = "Twilio REST API library for Haskell";
      description = "This package exports bindings to Twilio's REST API (<https://www.twilio.com/docs/api/rest>). While we would like to have a complete binding to Twilio's REST API, this package is being developed on demand. If you need something that has not been implemented yet, please send a pull request or file an issue on GitHub (<https://github.com/markandrus/twilio-haskell>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.free)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.old-locale)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "apitests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.twilio)
            ];
          };
        "integrationtests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.twilio)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      };
    }