{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http-dispatch"; version = "0.6.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Owain Lewis";
      maintainer = "owain@owainlewis.com";
      author = "Owain Lewis";
      homepage = "http://github.com/owainlewis/http-dispatch#readme";
      url = "";
      synopsis = "High level HTTP client for Haskell";
      description = "A high level HTTP client with a simple API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.case-insensitive)
          ];
        };
      tests = {
        "http-dispatch-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.http-dispatch)
            (hsPkgs.hspec)
            (hsPkgs.aeson)
            ];
          };
        };
      };
    }